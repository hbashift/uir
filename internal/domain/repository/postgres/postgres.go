package postgres

import (
	"fmt"

	"github.com/hbashift/uir/internal/domain/repository"
	"github.com/jmoiron/sqlx"
	_ "github.com/lib/pq"
)

const (
	selectSupervisorByIdQuery = "SELECT * FROM supervisor WHERE supervisor_id = $1"
	// selectStudentByIdQuery    = "SELECT * FROM student WHERE student_id = $1"
)

type postgresDb struct {
	postgres *sqlx.DB
}

type Config struct {
	Host     string
	Port     string
	Username string
	Password string
	DBName   string
	SSLMode  string
}

func NewPostgresDB(db *sqlx.DB) repository.Repository {
	return &postgresDb{postgres: db}
}

func InitPostgresDB(cfg Config) (*sqlx.DB, error) {
	db, err := sqlx.Open("postgres", fmt.Sprintf("host=%s port=%s user=%s dbname=%s password=%s sslmode=%s",
		cfg.Host, cfg.Port, cfg.Username, cfg.DBName, cfg.Password, cfg.SSLMode))
	if err != nil {
		return nil, err
	}

	err = db.Ping()
	if err != nil {
		return nil, err
	}

	return db, nil
}
