package postgres

import (
	"errors"
	"fmt"

	"github.com/google/uuid"
	"github.com/hbashift/uir/internal/domain"
)

func (p *postgresDb) getStudent(id uuid.UUID) (*domain.StudentDTO, error) {
	dto := domain.StudentDTO{}
	err := p.postgres.Get(&dto, selectStudentByIdQuery, id)

	if err != nil {
		err = fmt.Errorf("no such student: %w", err)

		return nil, err
	}

	return &dto, nil
}

func (p *postgresDb) getListStudents(supervisorId uuid.UUID) (*[]domain.StudentDTO, error) {
	var dto []domain.StudentDTO

	err := p.postgres.Select(&dto, "SELECT * FROM student WHERE supervisor_id = $1", supervisorId)

	if err != nil {

		return nil, err
	}

	return &dto, err
}

func (p *postgresDb) getSupervisor(id uuid.UUID) (*domain.SupervisorDTO, error) {
	dto := domain.SupervisorDTO{}
	err := p.postgres.Get(&dto, selectSupervisorByIdQuery, id)

	if err != nil {
		err = errors.New("no such supervisor")

		return nil, err
	}

	return &dto, nil
}

func (p *postgresDb) getUser(userId uuid.UUID) (*domain.UserDTO, error) {
	var dto domain.UserDTO

	err := p.postgres.Get(&dto, "SELECT * FROM client_user WHERE user_id = $1", userId)

	if err != nil {
		return nil, err
	}

	return &dto, nil
}

func (p *postgresDb) getDissertation(studentId uuid.UUID) (*domain.DissertationDTO, error) {
	var dto domain.DissertationDTO

	err := p.postgres.Get(&dto, "SELECT * FROM dissertation WHERE student_id = $1 ORDER BY publish_date DESC LIMIT 1",
		studentId)

	if err != nil {
		return nil, err
	}

	return &dto, nil
}

func (p *postgresDb) getConference(id uuid.UUID) (*domain.ConferenceDTO, error) {
	var dto domain.ConferenceDTO

	err := p.postgres.Get(&dto, "SELECT * FROM conference WHERE student_id = $1", id)

	if err != nil {
		return nil, err
	}

	return &dto, nil
}
