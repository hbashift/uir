package student

import "time"

type Info struct {
	FullName         string    `json:"full_name"`
	Email            string    `json:"email"`
	Specialization   string    `json:"specialization"`
	StudyingDuration int       `json:"studying_duration"`
	StartDate        time.Time `json:"start_date"`
	EnrollmentOrder  string    `json:"enrollment_order"`
}

type Dissertation struct {
	MinInfo          MinInfo `json:"min_info"`
	Plan             string  `json:"plan"`
	TitlePagePath    string  `json:"title_page_path"`
	DissertationPath string  `json:"dissertation_path"`
}

type ScientifiсWork struct {
	MetaInfo string `json:"scientific_work"` // TODO поставить Conference и Publication
}

type MinInfo struct {
	Name           string `json:"name"`
	SupervisorName string `json:"supervisor_name"`
}

type TeachingLoad struct {
	MetaInfo string `json:"teaching_load"`
}

type AuthorizationDTO struct {
	UserID   string `json:"user_id"`
	UserType string `json:"user_type"`
	Token    string `json:"access_token"`
}
