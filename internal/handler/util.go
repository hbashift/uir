package handler

import (
	"github.com/gin-gonic/gin"
	"github.com/google/uuid"
)

func getUUID(ctx *gin.Context) (*uuid.UUID, error) {
	stringId := ctx.Param("id")

	id, err := uuid.Parse(stringId)

	if err != nil {
		return nil, err
	}

	return &id, nil
}
