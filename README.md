# DatabaseProject

### Description
This is the repository of gradebook (database with app).
Project was created as form of completion school subject.

### Prerequisites
Before you start, make sure your OS has got docker compose utility (podman compose is also fine).
I don't recommend to start any kind of containers on Windows, because Windows is slow.

### Deployment
```bash
git clone https://github.com/janszczuryk/DatabaseProject.git
cd DatabaseProject/
cp .env.example .env
cp app/.env.example app/.env
```

Please edit `.env` - to fulfill docker settings.

Also edit `app/.env` - to set database credentails which correspond with `.env` file.

Then start up the services:
```bash
docker compose up -d
```

### Usage
You can use scripts inside `scripts` directory for convenience.
| Filename | Short description |
| ---: | :--- |
| `db-cli.sh` | Connect to database server via CLI |
| `db-export.sh` | Export any database to a dump |
| `db-import.sh` | Import a dump to any database |
| `db-schema.sh` | Create database schema (uses database from `.env` file)
| `db-seed.sh` | Seeds chosen database with fake data |

If you need access to the containers:
| Container | Short description |
| ---: | :--- |
| `dbp-mariadb-container` | Database container - has got own volume for data |
| `dbp-app-container` | App container - currently running Laravel app |

Get into the container:
```bash
docker exec -it dbp-mariadb-container bash
```

NOTE: App exposes port set in your `.env` file.
There is room for improvment by creating GUI for it.

### Removing
NOTE: It removes whole service containers together with database volume (all data).
```
cd DatabaseProject/
docker compose down -v
```
