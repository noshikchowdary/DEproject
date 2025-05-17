🔄 Data Automation (ELT) Project

Hi, I’m Noshik 👋 — I built this end-to-end ELT pipeline to automate data workflows using PostgreSQL, Apache Airflow, dbt, and Docker. It simulates a real-world data engineering setup, and is fully containerized for portability.

🚀 What This Project Does

1. ELT Script
A custom Python script extracts data from one PostgreSQL database, transforms it, and loads it into another PostgreSQL instance.
📎 View the script

2. Apache Airflow DAG
Airflow handles orchestration by running two main tasks:

Task Name	What It Does
run_elt_script	Executes the ELT script to move and transform data
dbt_run	Runs dbt inside a Docker container to model and clean the data
3. dbt (Data Build Tool)
The dbt project is located in custom_postgres/
Defined in dbt_project.yml, it includes:
Models for transforming raw data
Configurations for sources, targets, and tests
Turns raw, messy data into clean, analytics-ready tables 📊
4. Docker & Docker Compose
Everything is containerized for consistency and ease of setup. Here's what's inside:

✅ PostgreSQL Containers

One container for the source database
One container for the destination database
✅ Airflow Services

webserver: UI for managing DAGs
scheduler: Runs tasks on schedule
postgres: Stores Airflow's metadata
init-airflow: Initializes Airflow on startup
✅ Docker Compose

The docker-compose.yml file spins up everything—databases, Airflow, networks—so you're ready to go in one command.

docker-compose up --build
🧠 Why This Project Matters

✅ Shows experience in real-world orchestration and automation
✅ Demonstrates comfort with containers and pipeline design
✅ Highlights ability to document and modularize work
🛠 Technologies Used

Python
PostgreSQL
Apache Airflow
dbt
Docker / Docker Compose
📂 Folder Structure (Simplified)

.
├── elt/                       # ELT script
├── custom_postgres/          # dbt project
├── dags/                     # Airflow DAGs
├── docker-compose.yml        # Multi-container setup
└── README.md                 # Project documentation (this file!)
🌐 Credits

Inspired by the freeCodeCamp Data Engineering course.


---
**References**
Chau, J. (n.d.). The all-in-one workspace for your notes, tasks, wikis, and databases. Notion.
    https://transparent-trout-f2f.notion.site/FreeCodeCamp-Data-Engineering-Course-Resources-e9d2b97aed5b4d4a922257d953c4e759
