package service

import (
	"github.com/google/uuid"
	"github.com/hbashift/uir/internal/domain/entity/student"
	"github.com/hbashift/uir/internal/domain/repository"
	"time"
)

type StudentService interface {
	GetInfo(id uuid.UUID) (student.Info, error)
	GetMinInfo(id uuid.UUID) (student.MinInfo, error)
	GetDissertation(id uuid.UUID) (student.Dissertation, error)
	GetScientificWork(id uuid.UUID) (student.ScientifiсWork, error)
	// TODO функции редактирования информации
}

type studentService struct {
	db repository.Repository
}

func NewStudentService(service repository.Repository) StudentService {
	return &studentService{db: service}
}

func (s *studentService) GetInfo(id uuid.UUID) (student.Info, error) {
	return student.Info{
		FullName:         "test",
		Email:            "test@email.com",
		Specialization:   "testSpec",
		StudyingDuration: 2,
		StartDate:        time.Now(),
		EnrollmentOrder:  "111-111-111",
	}, nil
}

func (s *studentService) GetMinInfo(id uuid.UUID) (student.MinInfo, error) {
	return student.MinInfo{
		Name:           "test",
		SupervisorName: "supervisorTest",
	}, nil
}

func (s *studentService) GetDissertation(id uuid.UUID) (student.Dissertation, error) {
	return student.Dissertation{
		MinInfo: student.MinInfo{
			Name:           "test",
			SupervisorName: "supervisorTest",
		},
		Plan:             "test/plan/path",
		TitlePagePath:    "test/title/path",
		DissertationPath: "test/pz/path",
	}, nil
}

func (s *studentService) GetScientificWork(id uuid.UUID) (student.ScientifiсWork, error) {
	return student.ScientifiсWork{
		TeachingLoad: "{\"1\":100, \"test\":100}",
	}, nil
}
