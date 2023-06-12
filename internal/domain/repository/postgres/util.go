package postgres

import (
	"errors"
	"github.com/google/uuid"
	"github.com/hbashift/uir/internal/domain"
)

func (p *postgresDb) getStudent(id uuid.UUID) (*domain.StudentDTO, error) {
	dto := domain.StudentDTO{}
	err := p.postgres.Get(&dto, selectStudentByIdQuery, id)

	if err != nil {
		err = errors.New("no such student")

		return nil, err
	}

	return &dto, nil
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

func (p *postgresDb) getDissertation(dissertationId uuid.UUID) (*domain.DissertationDTO, error) {
	var dto domain.DissertationDTO

	err := p.postgres.Get(&dto, "SELECT * FROM dissertation WHERE dissertation_id = $1", dissertationId)

	if err != nil {
		return nil, err
	}

	return &dto, nil
}
