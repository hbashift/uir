package postgres

import (
	"encoding/json"
	"errors"

	"github.com/google/uuid"
	"github.com/hbashift/uir/internal/domain/entity/student"
)

func (p *postgresDb) GetStudentInfo(id uuid.UUID) (*student.Info, error) {
	var dto student.Info

	studentDTO, err := p.getStudent(id)

	if err != nil {
		return nil, err
	}

	dto = student.Info{
		FullName:         studentDTO.FullName,
		StudyingDuration: studentDTO.StudyingDuration,
		StartDate:        studentDTO.StartDate,
		EnrollmentOrder:  studentDTO.EnrollmentOrder,
	}

	err = p.postgres.Get(&dto.Specialization, "SELECT name FROM specialization WHERE specialization_id = $1",
		studentDTO.SpecializationId)

	if err != nil {

		return nil, err
	}

	user, err := p.getUser(studentDTO.UserId)

	dto.Email = user.Email

	return &dto, nil
}

func (p *postgresDb) GetStudentMinInfo(id uuid.UUID) (*student.MinInfo, error) {
	var dto student.MinInfo
	studentDTO, err := p.getStudent(id)

	if err != nil {
		return nil, err
	}

	supervisorDTO, err := p.getSupervisor(studentDTO.SupervisorId)

	if err != nil {
		return nil, err
	}

	dto = student.MinInfo{
		Name:           studentDTO.FullName,
		SupervisorName: supervisorDTO.FullName,
	}

	return &dto, nil
}

func (p *postgresDb) GetStudentDissertation(id uuid.UUID) (*student.Dissertation, error) {
	var dto student.Dissertation

	minInfo, err := p.GetStudentMinInfo(id)

	if err != nil {
		return nil, err
	}

	studentDTO, err := p.getStudent(id)

	if err != nil {
		return nil, err
	}

	dissertationDTO, err := p.getDissertation(studentDTO.StudentId)

	if err != nil {
		return nil, err
	}

	dto = student.Dissertation{
		MinInfo:          *minInfo,
		Plan:             studentDTO.PlanPath,
		TitlePagePath:    dissertationDTO.TitlePath,
		DissertationPath: dissertationDTO.PzPath,
	}

	return &dto, nil
}

func (p *postgresDb) GetStudentScientificWork(id uuid.UUID) (*student.ScientifiсWork, error) {
	var dto student.ScientifiсWork
	studentDTO, err := p.getStudent(id)
	// TODO Сделать нормальный вывод научных работ
	if err != nil {
		return nil, err
	}

	conferenceDTO, err := p.getConference(studentDTO.StudentId)

	if err != nil {
		return nil, err
	}

	b, err := json.Marshal(conferenceDTO)

	if err != nil {
		return nil, err
	}

	dto = student.ScientifiсWork{MetaInfo: string(b)}

	return &dto, nil
}

func (p *postgresDb) Authorization(login, password string) (*student.AuthorizationDTO, error) {
	dto := []ClientUser{}
	err := p.postgres.Select(&dto, "SELECT * FROM client_user WHERE email = $1 and password = $2", login, password)
	if err != nil {
		return nil, err
	}

	if len(dto) > 0 || len(dto) == 0 {
		return nil, errors.New("wrong login or password")
	}

	return &student.AuthorizationDTO{
		UserID:   dto[0].UserID,
		UserType: dto[0].ID,
	}, nil
}

type ClientUser struct {
	UserID   string `db:"user_id"`
	Email    string `db:"email"`
	Password string `db:"password"`
	ID       string `db:"id"`
}
