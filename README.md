# Karate API Automation Framework

A take-home-assignment-ready API automation framework using Karate DSL, JUnit 5 and Maven.

## Coverage

- GET users / resources
- POST create resource
- GET resource by ID
- PUT update resource
- DELETE resource
- Negative / invalid-ID test
- End-to-end request chaining: POST -> GET -> PUT -> DELETE
- Data-driven testing
- Reusable common feature
- JavaScript custom function
- JSON schema validation
- Environment configuration
- GitHub Actions CI workflow
- Built-in Karate HTML reports

## Technology

- Java 17
- Karate 1.5.2
- JUnit 5
- Maven
- GitHub Actions

## API used

The sample project uses JSONPlaceholder because it is a public API suitable for CRUD demonstration.

Base URL:
https://jsonplaceholder.typicode.com

## Project structure

```text
Karate_API_Automation_Framework
├── pom.xml
├── README.md
├── .gitignore
├── .github/workflows/karate-tests.yml
└── src/test
    ├── java/runners/TestRunner.java
    └── resources
        ├── karate-config.js
        ├── data/users.json
        ├── payloads/create-post.json
        ├── payloads/update-post.json
        ├── schemas/post-schema.json
        ├── utils/common.feature
        ├── features/crud/get-posts.feature
        ├── features/crud/create-post.feature
        ├── features/crud/get-post-by-id.feature
        ├── features/crud/get-invalid-post.feature
        ├── features/crud/update-post.feature
        ├── features/crud/delete-post.feature
        └── features/workflow/post-end-to-end.feature
```

## Run

Prerequisites:
- JDK 17+
- Maven 3.8+

Run all tests:

```bash
mvn clean test
```

Run only CRUD:

```bash
mvn test -Dkarate.options="--tags @crud"
```

Run workflow:

```bash
mvn test -Dkarate.options="--tags @workflow"
```

Reports are generated under:

```text
target/karate-reports/
```

## Notes

JSONPlaceholder is a fake REST API. POST/PUT/DELETE responses are simulated rather than persisted as a real database-backed CRUD system. The framework is therefore intended to demonstrate API automation design, request chaining, assertions and maintainability.
