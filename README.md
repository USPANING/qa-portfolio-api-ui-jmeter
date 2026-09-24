# QA Portfolio — Manual QA, API, SQL and JMeter Practice

## Project Overview

This educational portfolio demonstrates practical Junior QA skills across UI testing, exploratory testing, Chrome DevTools analysis, REST API testing with Postman, SQL fundamentals, and basic performance testing with Apache JMeter.

The project is based on the Restful Booker Platform, a public training application used for software testing practice.

## Disclaimer

This is an educational QA portfolio project.

- All testing activities were performed on a public training application.
- The JMeter scenario is a small and safe GET-only educational test. It is not a commercial audit, stress test, security test, or production capacity assessment.
- SQL exercises use a separate local educational data model. They do not represent direct access to the application database.
- No private data, credentials, authentication tokens, cookies, or content from closed testing cycles are included in this repository.

## Application Under Test

- **Application:** Restful Booker Platform
- **URL:** https://restful-booker-platform.live/
- **Type:** Public training and demonstration platform for software testing practice

## Skills and Tools Demonstrated

| Area | Tools and activities |
|---|---|
| UI and exploratory testing | Checklists, test cases, positive and negative scenarios, boundary-value checks, exploratory notes and usability observations |
| Browser analysis | Google Chrome, Chrome DevTools: Network, Console and Application panels |
| API testing | Postman collections, environments, REST API requests, CRUD scenarios, JSON validation, status-code checks and negative tests |
| SQL practice | PostgreSQL / pgAdmin, relational schema, `SELECT`, `WHERE`, `ORDER BY`, `COUNT`, `GROUP BY`, `INNER JOIN`, `LEFT JOIN`, `UPDATE` and `DELETE` |
| Performance basics | Apache JMeter, safe GET-only test plan, Summary Report analysis and documentation |
| Version control | Git and GitHub |

## Repository Structure

```text
qa-portfolio-api-ui-jmeter/
├── README.md
├── 01-test-design/
│   ├── checklist.md
│   └── test-cases.md
├── 02-devtools/
│   ├── network-analysis.md
│   └── console-observations.md
├── 03-api-postman/
│   ├── collection.json
│   ├── environment.example.json
│   └── api-test-summary.md
├── 04-sql-practice/
│   ├── schema.sql
│   ├── queries.sql
│   └── validation-notes.md
├── 05-jmeter/
│   ├── basic-load-test.jmx
│   └── results-summary.md
├── 06-test-execution/
│   ├── exploratory-notes.md
│   └── test-execution-report.md
└── 07-summary/
    └── final-test-summary.md
```

## Key Portfolio Artifacts

- [Test checklist](./01-test-design/checklist.md)
- [Test cases](./01-test-design/test-cases.md)
- [DevTools network analysis](./02-devtools/network-analysis.md)
- [Console observations](./02-devtools/console-observations.md)
- [Postman API test summary](./03-api-postman/api-test-summary.md)
- [Postman collection](./03-api-postman/collection.json)
- [SQL schema](./04-sql-practice/schema.sql)
- [SQL queries](./04-sql-practice/queries.sql)
- [SQL validation notes](./04-sql-practice/validation-notes.md)
- [JMeter results summary](./05-jmeter/results-summary.md)
- [Exploratory testing notes](./06-test-execution/exploratory-notes.md)
- [Test execution report](./06-test-execution/test-execution-report.md)
- [Final test summary](./07-summary/final-test-summary.md)

## Basic JMeter Run

A small educational JMeter test was performed against a read-only API endpoint:

- **Endpoint:** `GET https://automationintesting.online/api/room`
- **Threads:** 5 virtual users
- **Ramp-up:** 5 seconds
- **Loops:** 2
- **Total requests:** 10
- **Error rate:** 0.00%
- **Average response time:** 202 ms
- **Minimum response time:** 52 ms
- **Maximum response time:** 1069 ms

These figures are recorded results from a limited educational run. They do not support conclusions about production performance, scalability, availability, or system capacity.

## How to Review the Project

1. Start with the test design files in `01-test-design/`.
2. Review network and console observations in `02-devtools/`.
3. Import `03-api-postman/collection.json` into Postman.
4. Use `environment.example.json` as a template and provide only your own local variables where needed.
5. Review the SQL data model and validation exercises in `04-sql-practice/`.
6. Open `05-jmeter/basic-load-test.jmx` in Apache JMeter and review the safe test configuration.
7. Read the final project outcome in `07-summary/final-test-summary.md`.
