import { useEffect, useState } from 'react';
import { taskApi } from './api.js';

const emptyForm = { title: '', description: '', status: 'TODO' };

export default function App() {
  const [tasks, setTasks] = useState([]);
  const [form, setForm] = useState(emptyForm);
  const [editingId, setEditingId] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');

  const loadTasks = async () => {
    setLoading(true);
    setError('');
    try {
      setTasks(await taskApi.list());
    } catch (loadError) {
      setError(loadError.message);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    loadTasks();
  }, []);

  const submit = async (event) => {
    event.preventDefault();
    if (!form.title.trim()) return;
    try {
      if (editingId) {
        await taskApi.update(editingId, form);
      } else {
        await taskApi.create(form);
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
      await taskApi.remove(id);
      await loadTasks();
    } catch (removeError) {
      setError(removeError.message);
    }
  };

  return (
    <main className="container">
      <header className="header">
        <div><p className="eyebrow">AIDD TASK APP</p><h1>タスク管理</h1></div>
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
