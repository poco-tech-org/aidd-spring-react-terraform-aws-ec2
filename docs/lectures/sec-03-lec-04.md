# CRUD APIとバリデーション

- レクチャーID: `sec-03-lec-04`
- セクション: 3. Spring Bootバックエンドを作る
- 種別: `coding`
- 目安時間: 7分
- ステータス: `planned`

## セクションの目的

認証とデータベースを後から組み込める、テスト可能なREST APIを実装する

## レクチャーの目的

画面から利用するCRUD APIと入力バリデーションを実装する

## 進行

- Controller、Service、Repositoryの責務を分ける
- 正常系と入力エラーのレスポンスを実装する

## 成果物

- CRUD APIとバリデーション

## 動作確認

- APIクライアントから登録、取得、更新、削除を実行できる

## 実装ファイル

- `backend/src/main/java/com/pocotech/aidd/task/TaskNotFoundException.java`
- `backend/src/main/java/com/pocotech/aidd/task/TaskService.java`
- `backend/src/main/java/com/pocotech/aidd/task/TaskController.java`
- `backend/src/main/java/com/pocotech/aidd/api/ApiError.java`
- `backend/src/main/java/com/pocotech/aidd/api/GlobalExceptionHandler.java`

## 収録メモ

- ナレーション: ElevenLabsで場面単位に生成し、AWS・Spring・Terraformの用語発音を確認する。
- スクリーンキャスト: 講師が実際の操作と検証結果を収録する。
- Codexの提案は、差分・テスト・実行結果を確認してから採用する。

## コミット

このレクチャー終了時のコミットメッセージは、レクチャー名と同じ **CRUD APIとバリデーション** とする。
