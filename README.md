# Mekar Backend - Reference Service
Service provides reference data for Mekar Backend system

## Compile
For compilation, you need GOOS and GOARCH environment variables to compile reference service into target OS and architecture.
```env GOOS=linux GOARCH=amd64 go build -o bin/refsvc-linux-amd64 cmd/referenceservice/referenceservice.go```

## Database Migrations
Using CLI version of https://github.com/golang-migrate/migrate
* [Installation](https://github.com/golang-migrate/migrate/tree/master/cmd/migrate)
* Create migration file command ```migrate create -ext sql -dir migrations [NAME]``` example of NAME = create_religions_table
* Migrate changes command ```migrate -source file://migrations -database "mysql://[DB_USERNAME]:[DB_PASSWORD]@tcp([DB_HOST])/[DB_DATABASE]" up```
* Should table need data, provide table seeder within migration file. See `migrations/20200403154510_create_religions_table.up.sql` for example.

## Testing
* Using ```github.com/stretchr/testify``` package
* For mocking, use the [mockery tool](https://github.com/vektra/mockery) to auto generate the mock code against an interface as well, making using mocks much quicker. ```mockery -all -case=underscore```

## Postman Collection
For development, please use Postman account `developer@coniolabs.com` to create API collection or endpoints.

## Available Endpoints
The list based on ERD from Reference Service. Subject may change.
* Roles
* Registration Sources
* Profile Types
* Countries
* Occupations
* Legalities
* Banks
* Nationalities
* Educations
* Religions
* Marital Statuses
* Cities
* Provinces
* Field of Work


