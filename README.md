# docker-my-sql-boilerplate

A very simple boilerplate for running a MySQL database in a Docker container

## Dependencies

- Docker
- Python 3 (for creating tables in MySQL container)
  - See `requirements.txt` for required packages
- Powershell (for set up and clean up)

## Environment

The `env.template` file contains a template for the necessary environmental variables (EVs) that need to be defined. EVs should be defined in a file named `.env` in the root of the `src` directory. You should **never** commit this file.

The required EVs are:

- `DATABASE_HOST`
  - If you are not setting up any networks with Docker and are only running this on your local machine, this can be set to `127.0.0.1`.
- `DATABASE_PORT`
  - Set this to the port you want to expose the MySQL Docker container on. If you have MySQL running locally, you will probably want to set this to something that is **not** 3306; e.g. 3307.
- `MYSQL_ROOT_PASSWORD`
  - This is the root password that will be set for the MySQL Docker container the first time it is run.

## Creating Database and Tables

The `src/create_tables.py` Python script can be used to create the database and any desired tables programmatically.

## Setting Up

Run the `SetUp.ps1` Powershell script from the root of this repository to create and run the MySQL Docker container as well as any tables defined in `src/create_tables.py`.

## Cleaning Up

Run the `CleanUp.ps1` Powershell script from the root of this repository to remove the MySQL Docker container.
