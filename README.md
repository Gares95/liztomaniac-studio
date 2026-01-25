# Liztomaniac Studio

**Liztomaniac Studio** is a cloud-native, three-tier web application that lets users upload audio and apply real-time transformations such as tempo and pitch shifting. It is designed as a production-grade system, demonstrating modern cloud architecture, secure-by-default infrastructure, and an end-to-end deployment pipeline on AWS.

This project exists at the intersection of music, engineering, and cloud-native design: a playful idea built with enterprise-level rigor.

---

## ✨ Features

- Upload and process audio files directly in the browser
- Apply tempo and pitch transformations
- Stateless, containerized backend for horizontal scalability
- Durable object storage for processed assets
- Clean separation of UI, API, and processing layers

---

## Project Goals

- **Secure-by-default AWS architecture**
 - Least-privilege IAM, private networking, and hardened services
- **CI/CD with quality gates**
 - Automated builds, tests, and deployments
- **Observability & operational readiness**
 - Logging, metrics, and health checks baked in
- **Cost-aware design**
 - Serverless or on-demand compute where possible
 - Easy teardown for ephemeral environments

---

## Architecture


Liztomaniac Studio follows a classic three-tier design:

- **Frontend**
 - Static web UI (HTML/JS or React)
 - Hosted on Amazon S3 (optionally fronted by CloudFront)

- **Backend API**
 - Python (FastAPI / Flask)
 - Handles uploads, job orchestration, and metadata
 - Containerized with Docker

- **Processing Layer**
 - Audio transformations using `pydub` / `librosa`
 - Runs in isolated compute (ECS/Fargate or EC2)

- **Storage & Data**
 - Amazon S3 for raw and processed audio
 - Optional DynamoDB or RDS for metadata and usage tracking

- **Infrastructure**
 - Defined via IaC (CloudFormation or Terraform)
 - Fully reproducible environments

Architecture diagram source (comming soon):
```
diagrams/architecture.mmd
(Exported PNG/SVG will live in `diagrams/`.)
```


---

## Local Development

### Prerequisites

- Python 3.12
- Poetry 2.3+ (lock file generated with 2.3.1)

### Setup
```bash
poetry install
poetry run uvicorn liztomaniac.api.app:app --reload
```

This starts the API locally with hot reload enabled.

---

## Deployment

The production environment is built and deployed on AWS using:

* Docker images built via CI
* Automated infrastructure provisioning (IaC)
* ECS or EC2-based runtime
* S3-backed static frontend
* Secure networking and IAM boundaries

The system is designed to be:

* Reproducible
* Disposable

---

Liztomaniac Studio is not just a demo, it is a miniature production system, built to show how a real-world cloud application is designed, shipped, and operated.
