package postgres

import (
	"errors"
	"github.com/google/uuid"
	"github.com/hbashift/uir/internal/domain/entity/supervisor"
)

func (p *postgresDb) GetSupervisorsStudents(id uuid.UUID) (*supervisor.Students, error) {
	dto := supervisor.Students{}
	err := p.postgres.Get(&dto, "SELECT * FROM student WHERE supervisor_id = $1", id)

	if err != nil {
		dto = supervisor.Students{}
		err = errors.New("supervisor has no students")
	}

	return &dto, err
}

// GetSupervisorInfo TODO доделать функцию
func (p *postgresDb) GetSupervisorInfo(id uuid.UUID) (*supervisor.Info, error) {
	dto := supervisor.Info{}
	err := p.postgres.Get(&dto, selectSupervisorByIdQuery, id)

	if err != nil {
		dto = supervisor.Info{}
		err = errors.New("no such supervisor")
	}

	return &dto, err
}
