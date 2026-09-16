const API_BASE_URL = import.meta.env.VITE_API_BASE_URL ?? '';

export async function request(path, options = {}, accessToken) {
  const headers = new Headers(options.headers ?? {});
  headers.set('Content-Type', 'application/json');
  if (accessToken) {
    headers.set('Authorization', `Bearer ${accessToken}`);
  }

  const response = await fetch(`${API_BASE_URL}${path}`, { ...options, headers });
  if (!response.ok) {
    const body = await response.json().catch(() => ({}));
    throw new Error(body.message ?? `Request failed: ${response.status}`);
  }
  return response.status === 204 ? null : response.json();
}

export const taskApi = {
  list: (token) => request('/api/tasks', {}, token),
  create: (task, token) => request('/api/tasks', { method: 'POST', body: JSON.stringify(task) }, token),
  update: (id, task, token) => request(`/api/tasks/${id}`, { method: 'PUT', body: JSON.stringify(task) }, token),
  remove: (id, token) => request(`/api/tasks/${id}`, { method: 'DELETE' }, token),
};
