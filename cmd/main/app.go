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

	//arr := []string{"uir.sql", "exam.sql", "specialization.sql", "status.sql",
	//	"supervisor.sql", "type.sql", "publication.sql", "student.sql",
	//	"conference.sql", "dissertation.sql", "student_exam.sql", "subject.sql",
	//	"user_class.sql", "client_user.sql"}
	//
	//for _, val := range arr {
	//	path := filepath.Join("migrations", val)
	//
	//	c, ioErr := ioutil.ReadFile(path)
	//	if ioErr != nil {
	//		panic(ioErr)
	//	}
	//	sql := string(c)
	//	_, err = db.Exec(sql)
	//	if err != nil {
	//		panic(err)
	//	}
	//}

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
