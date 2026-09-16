# PostgreSQL接続とFlywayマイグレーション

- レクチャーID: `sec-03-lec-03`
- セクション: 3. Spring Bootバックエンドを作る
- 種別: `coding`
- 目安時間: 7分
- ステータス: `planned`

## セクションの目的

認証とデータベースを後から組み込める、テスト可能なREST APIを実装する

## レクチャーの目的

PostgreSQLへの接続と再現可能なスキーマ変更を実装する

## 進行

- データソース設定とマイグレーションファイルを作る
- 起動時にスキーマが作成されることを確認する

## 成果物

- 初期スキーマとFlywayマイグレーション

## 動作確認

- 空のデータベースから同じスキーマを再現できる

## 実装ファイル

- `backend/src/main/java/com/pocotech/aidd/task/TaskRepository.java`
- `backend/src/main/resources/db/migration/V1__create_tasks.sql`
- `backend/src/main/resources/application-local.yml`

## 収録メモ

- ナレーション: ElevenLabsで場面単位に生成し、AWS・Spring・Terraformの用語発音を確認する。
- スクリーンキャスト: 講師が実際の操作と検証結果を収録する。
- Codexの提案は、差分・テスト・実行結果を確認してから採用する。

## コミット

このレクチャー終了時のコミットメッセージは、レクチャー名と同じ **PostgreSQL接続とFlywayマイグレーション** とする。
