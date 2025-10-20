# js-learn

Sandbox for learning JavaScript with a containerized Node.js setup.

## Prerequisites

- Install [Docker Desktop](https://www.docker.com/products/docker-desktop/) (includes the `docker compose` plugin).

## Usage

Build the development image the first time:

```bash
docker compose build
```

Start the container in the background (it will keep running so you can exec into it as needed):

```bash
docker compose up -d
```

Open a shell inside the container where Node.js and npm are available:

```bash
docker compose exec dev bash
```

Your repository on the Mac is bind-mounted to `/workspace` inside the container, so any files you edit locally (including `node_modules`) are immediately available in the container.

## Examples

- Check the Node.js version: `docker compose exec dev node --version`
- Initialize a new project: `docker compose exec dev npm init`
- Start a development server (ports 3000 and 5173 are already published): `docker compose exec dev npm run dev`

## Stopping & Cleanup

- Stop the running container: `docker compose down`
- Remove everything (including the cached image): `docker compose down --rmi local --volumes`
