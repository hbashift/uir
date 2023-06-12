package main

import (
	"github.com/gin-gonic/gin"
	"github.com/hbashift/uir/internal/handler"
	"github.com/hbashift/uir/internal/service"
	"github.com/hbashift/uir/pkg/middlewares"
	gindump "github.com/tpkeeper/gin-dump"
	"io"
	"net/http"
	"os"
)

var (
	videoService    = service.New()
	videoController = handler.New(videoService)
)

func setUpLogOutput() {
	f, _ := os.Create("gin.log")
	gin.DefaultWriter = io.MultiWriter(f, os.Stdout)
}

func main() {
	setUpLogOutput()

	server := gin.New()

	server.Use(gin.Recovery(), middlewares.Logger(),
		middlewares.BasicAuth(), gindump.Dump())

	server.GET("/videos", func(ctx *gin.Context) {
		ctx.JSON(200, videoController.FindAll())
	})

	server.POST("/videos", func(ctx *gin.Context) {
		err := videoController.Save(ctx)

		if err != nil {
			ctx.JSON(http.StatusBadRequest, gin.H{
				"error": err.Error(),
			})
		} else {
			ctx.JSON(http.StatusOK, gin.H{
				"message": "Video Input is Valid!",
			})
		}
	})

	server.Run(":8080")
}
