package service

import (
	"github.com/google/uuid"
	"github.com/hbashift/uir/internal/domain/entity/supervisor"
	"github.com/hbashift/uir/internal/domain/repository"
)

type SupervisorService interface {
	GetInfo(id uuid.UUID) (*supervisor.Info, error)
	GetStudents(id uuid.UUID) (*supervisor.Students, error)
	// TODO функции редактирования информации
}

type supervisorService struct {
	db repository.Repository
}

func NewSupervisorService(db repository.Repository) SupervisorService {
	return &supervisorService{db: db}
}

func (s *supervisorService) GetInfo(id uuid.UUID) (*supervisor.Info, error) {
	info, err := s.db.GetSupervisorInfo(id)

	if err != nil {
		return nil, err
	}

	return info, nil
}

func (s *supervisorService) GetStudents(id uuid.UUID) (*supervisor.Students, error) {
	students, err := s.db.GetSupervisorsStudents(id)

	if err != nil {
		return nil, err
	}

	return students, nil
}
