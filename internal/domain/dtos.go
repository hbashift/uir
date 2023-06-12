package domain

import (
	"github.com/google/uuid"
	"time"
)

type SupervisorDTO struct {
	UserId       uuid.UUID `db:"user_id" json:"user_id"`
	FullName     string    `db:"full_name" json:"full_name"`
	SupervisorId uuid.UUID `db:"supervisor_id" json:"supervisor_id"`
}

type StudentDTO struct {
	UserId           uuid.UUID `db:"user_id" json:"user_id"`
	StudentId        uuid.UUID `db:"student_id" json:"student_id"`
	StartDate        time.Time `db:"start_date" json:"start_date"`
	Department       string    `db:"department" json:"department"`
	EnrollmentOrder  string    `db:"enrollment_order" json:"enrollment_order"`
	AcademicLeave    bool      `db:"academic_leave" json:"academic_leave"`
	PlanPath         string    `db:"plan_path" json:"plan_path"`
	StudyingDuration int       `db:"studying_duration" json:"studying_duration"`
	FullName         string    `db:"full_name" json:"full_name"`
	SpecializationId int       `db:"specialization_id" json:"specialization_id"`
	PublicationId    uuid.UUID `db:"publication_id" json:"publication_id"`
	ConferenceId     uuid.UUID `db:"conference_id" json:"conference_id"`
	SubjectId        uuid.UUID `db:"subject_id" json:"subject_id"`
	DissertationId   uuid.UUID `db:"dissertation_id" json:"dissertation_id"`
	StudentExamId    uuid.UUID `db:"student_exam_id" json:"student_exam_id"`
	SupervisorId     uuid.UUID `db:"supervisor_id" json:"supervisor_id"`
}

type UserDTO struct {
	UserID     uuid.UUID `db:"user_id"`
	Email      string    `db:"email"`
	Password   string    `db:"password"`
	AccessType int       `db:"id"`
}

type DissertationDTO struct {
	TitlePath      string    `db:"title_path" json:"title_path"`
	PzPath         string    `db:"pz_path" json:"pz_path"`
	DissertationId uuid.UUID `db:"dissertation_id" json:"dissertation_id"`
	StatusId       int       `db:"status_id" json:"status_id"`
}

type PublicationDTO struct {
	Name       string `db:"name"`
	OutputDate string `db:"output_date"`
	NumOfPages int    `db:"num_of_pages"`
	CoAuthors  string `db:"co_authors"`
	TypeId     int    `db:"type_id"`
}

type Type struct {
	TypeId   int    `db:"type_id"`
	TypeName string `db:"type_name"`
}

type Conference struct {
	ConferenceName string `db:"name"`
	ArticleName    string `db:"article_name"`
	CoAuthors      string `db:"co_authors"`
	Language       string `db:"language"`
	TypeId         int    `db:"type_id"`
}
