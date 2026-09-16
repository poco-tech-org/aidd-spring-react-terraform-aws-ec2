# Cognito authentication

The course uses an Amazon Cognito User Pool and a public App Client. The React application uses the Authorization Code flow with PKCE. The Spring Boot API validates Cognito JWTs as an OAuth2 Resource Server.

## Values used by the frontend

Set these values in `frontend/.env.local` during local development:

```dotenv
VITE_COGNITO_ISSUER=https://cognito-idp.<region>.amazonaws.com/<user-pool-id>
VITE_COGNITO_CLIENT_ID=<app-client-id>
VITE_API_BASE_URL=http://localhost:8080
```

The callback URL must match the App Client configuration exactly. Do not commit the local environment file.

## Security boundary

- The access token is sent in the `Authorization: Bearer` header.
- The API uses the JWT `sub` claim as the application owner identifier.
- The RDS password is never placed in the frontend bundle.
- A production callback URL must use a deployment endpoint appropriate for the environment.
