# Framework Architecture

```text
                         Karate API Automation
                                  |
                                  v
                         karate-config.js
                         Environment / Base URL
                                  |
               +------------------+------------------+
               |                                     |
               v                                     v
          CRUD Features                         E2E Workflow
               |                                     |
        +------+------+                         POST Create
        |      |      |                              |
       GET    POST    PUT                            v
        |      |      |                         Extract ID
        |      |      |                              |
        +------+------|------------------------------+
                       |
                       v
                GET -> PUT -> DELETE
                       |
                       v
               Response Validation
                       |
          +------------+-------------+
          |            |             |
       Status       Body/Schema   Business Rules
          |            |             |
          +------------+-------------+
                       |
                       v
                Karate HTML Report
                       |
                       v
                 GitHub Actions
```
