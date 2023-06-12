package supervisor

import (
	"github.com/hbashift/uir/internal/domain/entity/student"
)

type Info struct {
	FullName string `json:"full_name"`
	Email    string `json:"email"`
}

type Students struct {
	StudentsList []student.MinInfo `json:"students_list"`
}
