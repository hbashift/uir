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

	router.GET("/students/info/:id", student.GetInfo)
	router.GET("/students/min-info/:id", student.GetMinInfo)
	router.GET("/students/dissertation/:id", student.GetDissertation)
	router.GET("/students/science/:id", student.GetScientificWork)
	router.GET("/supervisor/info/:id", supervisor.GetInfo)
	router.GET("/supervisor/students/:id", supervisor.GetStudents)

	return router
}
