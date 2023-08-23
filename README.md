# Snapvox API

Snapvox API is built using NestJS. To start using it, you need to install the dependencies first:

```bash
npm install
```

## Database

Snapvox API uses PostgreSQL as its database. To run the database, you can use Docker:

```bash
docker-compose up -d
```

Copy the template `.env.template` to a new `.env`

```bash
cp .env.template .env
```

## Migrating SQL schema

Snapvox API uses Prisma to manage the database schema. To migrate the schema, you can use the following command:

```bash
# development
npx prisma migrate dev
```

## Running the app

```bash
# development
npm run start:dev
```

