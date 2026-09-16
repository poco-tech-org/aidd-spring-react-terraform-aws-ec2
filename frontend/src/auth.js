import { UserManager, WebStorageStateStore } from 'oidc-client-ts';

const authority = import.meta.env.VITE_COGNITO_ISSUER;
const manager = authority
  ? new UserManager({
      authority,
      client_id: import.meta.env.VITE_COGNITO_CLIENT_ID,
      redirect_uri: `${window.location.origin}/auth/callback`,
      post_logout_redirect_uri: window.location.origin,
      response_type: 'code',
      scope: 'openid email',
      userStore: new WebStorageStateStore({ store: window.sessionStorage }),
    })
  : null;

export const auth = {
  enabled: Boolean(manager),
  login: () => manager?.signinRedirect(),
  logout: () => manager?.signoutRedirect(),
  getUser: () => manager?.getUser() ?? Promise.resolve(null),
  handleCallback: () => manager?.signinCallback(),
};
