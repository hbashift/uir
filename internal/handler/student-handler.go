package handler

import (
	"github.com/gin-gonic/gin"
	"github.com/hbashift/uir/internal/service"
)

type StudentHandler interface {
	GetInfo(ctx *gin.Context)
	GetMinInfo(ctx *gin.Context)
	GetDissertation(ctx *gin.Context)
	GetScientificWork(ctx *gin.Context)
	// TODO функции редактирования информации
}

type studentHandler struct {
	service service.StudentService
}

func NewStudentHandler(service service.StudentService) StudentHandler {
	return &studentHandler{service: service}
}

func (s *studentHandler) GetInfo(ctx *gin.Context) {
	//TODO implement me
	panic("implement me")
}

func (s *studentHandler) GetMinInfo(ctx *gin.Context) {
	//TODO implement me
	panic("implement me")
}

func (s *studentHandler) GetDissertation(ctx *gin.Context) {
	//TODO implement me
	panic("implement me")
}

func (s *studentHandler) GetScientificWork(ctx *gin.Context) {
	//TODO implement me
	panic("implement me")
}
