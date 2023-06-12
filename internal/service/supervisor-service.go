package service

import (
	"github.com/hbashift/uir/internal/domain"
	"github.com/hbashift/uir/internal/domain/entity/supervisor"
	"github.com/hbashift/uir/internal/domain/repository"
)

type SupervisorService interface {
	GetInfo(dto domain.SupervisorDTO) (supervisor.Info, error)
	GetStudents(dto domain.SupervisorDTO) (supervisor.Students, error)
	// TODO функции редактирования информации
}

type supervisorService struct {
	db repository.Repository
}

func NewSupervisorService(db repository.Repository) SupervisorService {
	return &supervisorService{db: db}
}

func (s *supervisorService) GetInfo(dto domain.SupervisorDTO) (supervisor.Info, error) {
	//TODO implement me
	panic("implement me")
}

func (s *supervisorService) GetStudents(dto domain.SupervisorDTO) (supervisor.Students, error) {
	//TODO implement me
	panic("implement me")
}
