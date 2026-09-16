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

## Codexへの指示文

以下をそのままCodexに渡し、出力された差分と検証結果を確認してから採用します。

```text
あなたはこのリポジトリのシニア開発者です。Codexを使ったAIDDの一環として、次のレクチャーだけを実施してください。

レクチャーID: sec-03-lec-02
目的: アプリのドメインとAPI契約を実装前に整理する
セクションの前提: 認証とデータベースを後から組み込める、テスト可能なREST APIを実装する

依頼:
- リソース、状態、入力、エラー形式を定義する
- Reactから利用するAPIのリクエストとレスポンスを確認する

対象範囲（実際の分割はレビューで調整可）:
- backend/src/main/java/com/pocotech/aidd/task/Task.java
- backend/src/main/java/com/pocotech/aidd/task/TaskStatus.java
- backend/src/main/java/com/pocotech/aidd/task/TaskResponse.java
- docs/api/openapi.yaml

方針:
- まず設計上の判断を明文化し、必要な資料を更新してください。コード変更は目的達成に必要な最小限に限定してください。
- 既存の実装・規約・カリキュラムを先に読み、無関係なリファクタリングをしない。
- AWSの実リソースを変更する場合は、適用前にTerraform planとコスト影響を確認する。
- シークレット、アクセストークン、個人情報、実アカウント固有値をコードや資料へ書き込まない。
- 変更後は差分を要約し、実行したコマンドと結果、未解決リスクを報告する。

完了条件:
- API仕様とドメインモデル

検証:
- 主要ユースケースのAPI契約を説明できる

この依頼の範囲を越える変更は行わず、判断が必要な点は実装前に質問または仮定として明示してください。
```

## 進行

- リソース、状態、入力、エラー形式を定義する
- Reactから利用するAPIのリクエストとレスポンスを確認する

## 生成される目安の成果物

実際のファイル分割やパスは、Codexの提案とレビューで変わって構いません。収録時点では次を目安にします。

- `backend/src/main/java/com/pocotech/aidd/task/Task.java` — Spring Boot設定・コードの目安
- `backend/src/main/java/com/pocotech/aidd/task/TaskStatus.java` — Spring Boot設定・コードの目安
- `backend/src/main/java/com/pocotech/aidd/task/TaskResponse.java` — Spring Boot設定・コードの目安
- `docs/api/openapi.yaml` — 機械可読な定義の目安

## 動作確認

- 主要ユースケースのAPI契約を説明できる

## 収録メモ

- まずCodexへの指示文を提示し、生成された差分・テスト・実行結果を確認する。
- ナレーションはElevenLabsで場面単位に生成し、AWS・Spring・Terraformの用語発音を確認する。
- スクリーンキャストは講師が実際の操作と検証結果を収録する。

## コミット

このレクチャー終了時のコミットメッセージは、レクチャー名と同じ **ドメインモデルとREST API設計** とする。
