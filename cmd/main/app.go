package main

import (
	"github.com/hbashift/uir/internal/domain/repository/postgres"
	"github.com/hbashift/uir/internal/handler"
	"github.com/hbashift/uir/internal/service"
	"github.com/spf13/viper"
)

func main() {
	err := initConfig()

	db, err := postgres.InitPostgresDB(postgres.Config{
		Host:     viper.GetString("db.host"),
		Port:     viper.GetString("db.port"),
		Username: viper.GetString("db.username"),
		Password: viper.GetString("db.password"),
		DBName:   viper.GetString("db.dbname"),
		SSLMode:  viper.GetString("db.sslmode"),
	})

	if err != nil {
		panic(err)
	}

	rep := postgres.NewPostgresDB(db)

	student := service.NewStudentService(rep)
	supervisor := service.NewSupervisorService(rep)

	studentHandler := handler.NewStudentHandler(student)
	supervisorHandler := handler.NewSupervisorHandler(supervisor)

	server := handler.InitRoutes(studentHandler, supervisorHandler)

	server.Run(":8080")
}

func initConfig() error {
	viper.AddConfigPath("configs")
	viper.SetConfigName("config")
	return viper.ReadInConfig()
}
