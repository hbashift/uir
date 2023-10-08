package handler

import (
	"time"

	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
	"github.com/hbashift/uir/internal/service"
)

type StudentHandler interface {
	GetInfo(ctx *gin.Context)
	GetMinInfo(ctx *gin.Context)
	GetDissertation(ctx *gin.Context)
	GetScientificWork(ctx *gin.Context)
	Authorize(ctx *gin.Context)
	// TODO функции редактирования информации
}

func NewStudentHandler(service service.StudentService) StudentHandler {
	return &studentHandler{service: service}
}

type SupervisorHandler interface {
	GetInfo(ctx *gin.Context)
	GetStudents(ctx *gin.Context)
	// TODO функции редактирования информации
}

func NewSupervisorHandler(service service.SupervisorService) SupervisorHandler {
	return &supervisorHandler{service: service}
}

func InitRoutes(student StudentHandler, supervisor SupervisorHandler) *gin.Engine {
	router := gin.Default()

	router.Use(cors.New(cors.Config{
		AllowMethods:     []string{"PUT", "PATCH", "POST", "GET", "DELETE"},
		AllowHeaders:     []string{"Origin", "Authorization", "Content-Type", "Accept-Encoding"},
		ExposeHeaders:    []string{"Content-Length", "Access-Control-Allow-Origin", "Access-Control-Allow-Credentials", "Access-Control-Allow-Headers", "Access-Control-Allow-Methods"},
		AllowCredentials: true,
		AllowAllOrigins:  true,
		AllowOriginFunc:  func(origin string) bool { return true },
		MaxAge:           12 * time.Hour,
	}))

	router.GET("/students/info/:id", student.GetInfo)
	router.GET("/students/min-info/:id", student.GetMinInfo)
	router.GET("/students/dissertation/:id", student.GetDissertation)
	router.GET("/students/science/:id", student.GetScientificWork)
	router.GET("/supervisor/info/:id", supervisor.GetInfo)
	router.GET("/supervisor/students/:id", supervisor.GetStudents)
	router.POST("/authorize", student.Authorize)

	return router
}
