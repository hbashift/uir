package handler

import (
	"github.com/gin-gonic/gin"
	"github.com/hbashift/uir/internal/service"
	"net/http"
)

type studentHandler struct {
	service service.StudentService
}

func (s *studentHandler) GetInfo(ctx *gin.Context) {
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

func (s *studentHandler) GetMinInfo(ctx *gin.Context) {
	id, err := getUUID(ctx)

	if err != nil {
		ctx.AbortWithError(http.StatusBadRequest, err)
		return
	}

	minInfo, err := s.service.GetMinInfo(*id)

	if err != nil {
		ctx.AbortWithError(http.StatusBadRequest, err)
		return
	}

	ctx.JSON(http.StatusOK, minInfo)
}

func (s *studentHandler) GetDissertation(ctx *gin.Context) {
	id, err := getUUID(ctx)

	if err != nil {
		ctx.AbortWithError(http.StatusBadRequest, err)
		return
	}

	dissertation, err := s.service.GetDissertation(*id)

	if err != nil {
		ctx.AbortWithError(http.StatusBadRequest, err)
		return
	}

	ctx.JSON(http.StatusOK, dissertation)
}

func (s *studentHandler) GetScientificWork(ctx *gin.Context) {
	id, err := getUUID(ctx)

	if err != nil {
		ctx.AbortWithError(http.StatusBadRequest, err)
		return
	}

	scientificWork, err := s.service.GetScientificWork(*id)

	if err != nil {
		ctx.AbortWithError(http.StatusBadRequest, err)
		return
	}

	ctx.IndentedJSON(http.StatusOK, scientificWork)
}
