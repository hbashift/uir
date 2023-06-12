package handler

import (
	"github.com/gin-gonic/gin"
	"github.com/hbashift/uir/internal/service"
)

type SupervisorHandler interface {
	GetInfo(ctx *gin.Context)
	GetStudents(ctx *gin.Context)
	// TODO функции редактирования информации
}

type supervisorHandler struct {
	service service.SupervisorService
}

func NewSupervisorHandler(service service.SupervisorService) SupervisorHandler {
	return &supervisorHandler{service: service}
}

func (s *supervisorHandler) GetInfo(ctx *gin.Context) {
	//TODO implement me
	panic("implement me")
}

func (s *supervisorHandler) GetStudents(ctx *gin.Context) {
	//TODO implement me
	panic("implement me")
}
