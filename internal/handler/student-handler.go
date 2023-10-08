package handler

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/google/martian/log"
	"github.com/hbashift/uir/internal/service"
	"github.com/pkg/errors"
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

func (s *studentHandler) Authorize(ctx *gin.Context) {
	dto := AuthorizationDTO{}
	if err := ctx.ShouldBindJSON(&dto); err != nil {
		ctx.AbortWithError(http.StatusInternalServerError, errors.Wrap(err, "parsing error"))
		log.Errorf("couldn't bind JSON: %s", err.Error())
		return
	}

	authorizeData, err := s.service.Authorize(dto.Login, dto.Password)
	if err != nil {
		ctx.AbortWithError(http.StatusBadRequest, errors.Wrap(err, "could not authorize"))
		log.Errorf("wrong credentials: %s", err.Error())

		return
	}

	ctx.IndentedJSON(http.StatusOK, authorizeData)
}

type AuthorizationDTO struct {
	Login    string `json:"login,omitempty"`
	Password string `json:"password,omitempty"`
}
