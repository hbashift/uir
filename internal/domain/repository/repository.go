package repository

import (
	"github.com/google/uuid"
	"github.com/hbashift/uir/internal/domain/entity/student"
	"github.com/hbashift/uir/internal/domain/entity/supervisor"
)

type Repository interface {
	GetStudentInfo(id uuid.UUID) (*student.Info, error)
	GetStudentMinInfo(id uuid.UUID) (*student.MinInfo, error)
	GetStudentDissertation(id uuid.UUID) (*student.Dissertation, error)
	GetStudentScientificWork(id uuid.UUID) (*student.ScientifiсWork, error)
	GetSupervisorInfo(id uuid.UUID) (*supervisor.Info, error)
	GetSupervisorsStudents(id uuid.UUID) (*supervisor.Students, error)
}
