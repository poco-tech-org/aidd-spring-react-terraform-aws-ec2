# ドメインモデルとREST API設計

- レクチャーID: `sec-03-lec-02`
- セクション: 3. Spring Bootバックエンドを作る
- 種別: `concept`
- 目安時間: 7分
- ステータス: `planned`

## セクションの目的

認証とデータベースを後から組み込める、テスト可能なREST APIを実装する

## レクチャーの目的

アプリのドメインとAPI契約を実装前に整理する

## 進行

- リソース、状態、入力、エラー形式を定義する
- Reactから利用するAPIのリクエストとレスポンスを確認する

## 成果物

- API仕様とドメインモデル

## 動作確認

- 主要ユースケースのAPI契約を説明できる

## 実装ファイル

- `backend/src/main/java/com/pocotech/aidd/task/TaskStatus.java`
- `backend/src/main/java/com/pocotech/aidd/task/Task.java`
- `backend/src/main/java/com/pocotech/aidd/task/TaskResponse.java`
- `backend/src/main/java/com/pocotech/aidd/task/CreateTaskRequest.java`
- `backend/src/main/java/com/pocotech/aidd/task/UpdateTaskRequest.java`
- `docs/api/openapi.yaml`

## 収録メモ

- ナレーション: ElevenLabsで場面単位に生成し、AWS・Spring・Terraformの用語発音を確認する。
- スクリーンキャスト: 講師が実際の操作と検証結果を収録する。
- Codexの提案は、差分・テスト・実行結果を確認してから採用する。

## コミット

このレクチャー終了時のコミットメッセージは、レクチャー名と同じ **ドメインモデルとREST API設計** とする。
