package handler

import (
	"github.com/gin-gonic/gin"
	"github.com/hbashift/uir/internal/service"
	"net/http"
)

type supervisorHandler struct {
	service service.SupervisorService
}

func (s *supervisorHandler) GetInfo(ctx *gin.Context) {
	id, err := getUUID(ctx)

	if err != nil {
		ctx.AbortWithError(http.StatusBadRequest, err)
		return
	}

	info, err := s.service.GetInfo(*id)

	if err != nil {
		ctx.AbortWithError(http.StatusBadRequest, err)
		return
	}

	ctx.JSON(http.StatusOK, info)
}

func (s *supervisorHandler) GetStudents(ctx *gin.Context) {
	id, err := getUUID(ctx)

	if err != nil {
		ctx.AbortWithError(http.StatusBadRequest, err)
		return
	}

	students, err := s.service.GetStudents(*id)

	if err != nil {
		ctx.AbortWithError(http.StatusBadRequest, err)
		return
	}

	ctx.JSON(http.StatusOK, students)
}
