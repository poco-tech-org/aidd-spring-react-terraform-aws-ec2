# テスト・例外処理・Actuator health

- レクチャーID: `sec-03-lec-05`
- セクション: 3. Spring Bootバックエンドを作る
- 種別: `coding`
- 目安時間: 5分
- ステータス: `planned`

## セクションの目的

認証とデータベースを後から組み込める、テスト可能なREST APIを実装する

## レクチャーの目的

APIの品質確認と、ALBから利用できるヘルスチェックを整備する

## 進行

- ServiceとControllerのテストを追加する
- 例外を統一的に処理し、Actuator healthを確認する

## 成果物

- APIテストとヘルスチェックエンドポイント

## 動作確認

- テストが成功し、ヘルスチェックが200を返す

## 実装ファイル

- `backend/src/main/java/com/pocotech/aidd/security/SecurityConfig.java`
- `backend/src/test/resources/application-test.yml`
- `backend/src/test/java/com/pocotech/aidd/task/TaskServiceTest.java`

## 収録メモ

- ナレーション: ElevenLabsで場面単位に生成し、AWS・Spring・Terraformの用語発音を確認する。
- スクリーンキャスト: 講師が実際の操作と検証結果を収録する。
- Codexの提案は、差分・テスト・実行結果を確認してから採用する。

## コミット

このレクチャー終了時のコミットメッセージは、レクチャー名と同じ **テスト・例外処理・Actuator health** とする。
