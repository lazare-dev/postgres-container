#!/bin/bash
set -e

# Start the PostgreSQL service
service postgresql start

# Check if the PostgreSQL user exists before creating it
if psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname postgres -tAc "SELECT 1 FROM pg_roles WHERE rolname='$POSTGRES_USER'" | grep -q 1; then
    echo "User $POSTGRES_USER already exists."
else
    # Create a PostgreSQL user
    psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname postgres <<-EOSQL
        CREATE USER $POSTGRES_USER WITH SUPERUSER PASSWORD '$POSTGRES_PASSWORD';
EOSQL
fi

# Check if the PostgreSQL database exists before creating it
if psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname postgres -tAc "SELECT 1 FROM pg_database WHERE datname='$POSTGRES_DB'" | grep -q 1; then
    echo "Database $POSTGRES_DB already exists."
else
    # Create a PostgreSQL database and set the owner
    psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname postgres <<-EOSQL
        CREATE DATABASE $POSTGRES_DB;
        GRANT ALL PRIVILEGES ON DATABASE $POSTGRES_DB TO $POSTGRES_USER;
EOSQL
fi

# No need to stop the PostgreSQL service here
