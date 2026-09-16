# Local smoke test

```bash
docker compose up -d postgres
cd backend
mvn spring-boot:run -Dspring-boot.run.profiles=local
```

In another terminal:

```bash
APP_BASE_URL=http://localhost:8080 scripts/smoke-test.sh
```

Then start the frontend with `npm ci && npm run dev` in `frontend/` and verify the browser CRUD flow.
