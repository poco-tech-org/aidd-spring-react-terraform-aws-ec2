import { useEffect, useState } from 'react';
import { taskApi } from './api.js';
import { auth } from './auth.js';

const emptyForm = { title: '', description: '', status: 'TODO' };

function AuthCallback() {
  const [message, setMessage] = useState('ログインを完了しています…');

  useEffect(() => {
    auth.handleCallback()
      .then(() => { window.location.replace('/'); })
      .catch((error) => setMessage(`ログインに失敗しました: ${error.message}`));
  }, []);

  return <main className="container"><p>{message}</p></main>;
}

export default function App() {
  const [user, setUser] = useState(null);
  const [tasks, setTasks] = useState([]);
  const [form, setForm] = useState(emptyForm);
  const [editingId, setEditingId] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');

  if (window.location.pathname === '/auth/callback') {
    return <AuthCallback />;
  }

  const loadTasks = async (currentUser = user) => {
    setLoading(true);
    setError('');
    try {
      setTasks(await taskApi.list(currentUser?.access_token));
    } catch (loadError) {
      setError(loadError.message);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    auth.getUser().then((currentUser) => {
      setUser(currentUser);
      loadTasks(currentUser);
    });
  }, []);

  const submit = async (event) => {
    event.preventDefault();
    if (!form.title.trim()) return;
    try {
      if (editingId) {
        await taskApi.update(editingId, form, user?.access_token);
      } else {
        await taskApi.create(form, user?.access_token);
      }
      setForm(emptyForm);
      setEditingId(null);
      await loadTasks();
    } catch (submitError) {
      setError(submitError.message);
    }
  };

  const edit = (task) => {
    setEditingId(task.id);
    setForm({ title: task.title, description: task.description ?? '', status: task.status });
  };

  const remove = async (id) => {
    try {
      await taskApi.remove(id, user?.access_token);
      await loadTasks();
    } catch (removeError) {
      setError(removeError.message);
    }
  };

  return (
    <main className="container">
      <header className="header">
        <div><p className="eyebrow">AIDD TASK APP</p><h1>タスク管理</h1></div>
        {auth.enabled && (user ? <button onClick={() => auth.logout()}>ログアウト</button> : <button onClick={() => auth.login()}>ログイン</button>)}
      </header>
      {error && <p className="error" role="alert">{error}</p>}
      <form className="task-form" onSubmit={submit}>
        <input value={form.title} onChange={(event) => setForm({ ...form, title: event.target.value })} placeholder="タスク名" maxLength={200} />
        <textarea value={form.description} onChange={(event) => setForm({ ...form, description: event.target.value })} placeholder="説明（任意）" maxLength={2000} />
        <select value={form.status} onChange={(event) => setForm({ ...form, status: event.target.value })}>
          <option value="TODO">未着手</option>
          <option value="IN_PROGRESS">進行中</option>
          <option value="DONE">完了</option>
        </select>
        <div className="form-actions">
          <button type="submit">{editingId ? '更新' : '追加'}</button>
          {editingId && <button type="button" onClick={() => { setEditingId(null); setForm(emptyForm); }}>キャンセル</button>}
        </div>
      </form>
      {loading ? <p>読み込み中…</p> : tasks.length === 0 ? <p>タスクはありません。</p> : (
        <ul className="task-list">
          {tasks.map((task) => (
            <li key={task.id} className="task-card">
              <div><h2>{task.title}</h2><p>{task.description}</p><small>{task.status}</small></div>
              <div className="card-actions"><button onClick={() => edit(task)}>編集</button><button className="danger" onClick={() => remove(task.id)}>削除</button></div>
            </li>
          ))}
        </ul>
      )}
    </main>
  );
}
