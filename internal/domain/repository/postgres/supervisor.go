package postgres

import (
	"github.com/google/uuid"
	"github.com/hbashift/uir/internal/domain/entity/supervisor"
)

func (p *postgresDb) GetSupervisorsStudents(id uuid.UUID) (*supervisor.Students, error) {
	dto := supervisor.Students{}

	students, err := p.getListStudents(id)

	if err != nil {

		return nil, err
	}

	for _, value := range *students {
		minInfo, err := p.GetStudentMinInfo(value.StudentId)

		if err != nil {
			continue
		}

		dto.StudentsList = append(dto.StudentsList, *minInfo)
	}

	return &dto, err
}

func (p *postgresDb) GetSupervisorInfo(id uuid.UUID) (*supervisor.Info, error) {
	var dto supervisor.Info
	supervisorDTO, err := p.getSupervisor(id)

	if err != nil {
		return nil, err
	}

	userDTO, err := p.getUser(supervisorDTO.UserId)

	if err != nil {
		return nil, err
	}

	dto = supervisor.Info{
		FullName: supervisorDTO.FullName,
		Email:    userDTO.Email,
	}

	return &dto, err
}
