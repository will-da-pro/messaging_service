[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/2hfNSMcP)

# Messenger App

## Requirements

- Node JS 11.6.0
- Python 3.14.0
- PostgreSQL 14.19

## Setup

### Database

```bash
sudo -u postgres psql
```

```sql
CREATE DATABASE database_name;
CREATE USER server_user WITH PASSWORD 'server_password';
GRANT ALL PRIVILEGES ON DATABASE database_name TO server_user;
ALTER DATABASE database_name OWNER TO server_user;
```

### Backend

```bash
cd messenger_backend
python3 -m venv .venv
source .venv/bin/activate
pip3 install -r requirements.txt
python3 manage.py makemigrations && python3 manage.py migrate
```

Rename .env-template to .env, and add change the database settings to align with what you set when configuring the PostgreSQL database.

### Frontend

```bash
cd messenger_app
npm install
```

## Running

```bash
./deploy.bash
```
