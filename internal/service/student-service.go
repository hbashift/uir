package service

import (
	"github.com/google/uuid"
	"github.com/hbashift/uir/internal/domain/entity/student"
	"github.com/hbashift/uir/internal/domain/repository"
)

type StudentService interface {
	GetInfo(id uuid.UUID) (*student.Info, error)
	GetMinInfo(id uuid.UUID) (*student.MinInfo, error)
	GetDissertation(id uuid.UUID) (*student.Dissertation, error)
	GetScientificWork(id uuid.UUID) (*student.ScientifiсWork, error)
	// TODO функции редактирования информации
}

type studentService struct {
	db repository.Repository
}

func NewStudentService(service repository.Repository) StudentService {
	return &studentService{db: service}
}

func (s *studentService) GetInfo(id uuid.UUID) (*student.Info, error) {
	info, err := s.db.GetStudentInfo(id)

	if err != nil {
		return nil, err
	}

	return info, nil
}

func (s *studentService) GetMinInfo(id uuid.UUID) (*student.MinInfo, error) {
	minInfo, err := s.db.GetStudentMinInfo(id)

	if err != nil {
		return nil, err
	}

	return minInfo, nil
}

func (s *studentService) GetDissertation(id uuid.UUID) (*student.Dissertation, error) {
	dissertation, err := s.db.GetStudentDissertation(id)

	if err != nil {
		return nil, err
	}

	return dissertation, nil
}

func (s *studentService) GetScientificWork(id uuid.UUID) (*student.ScientifiсWork, error) {
	scientificWork, err := s.db.GetStudentScientificWork(id)

	if err != nil {
		return nil, err
	}

	return scientificWork, nil
}
