# Spring Security Resource ServerでJWTを検証する

- レクチャーID: `sec-05-lec-03`
- セクション: 5. Cognito認証を組み込む
- 種別: `coding`
- 目安時間: 8分
- ステータス: `planned`

## セクションの目的

Cognitoでログインし、ReactとSpring Boot APIの両方で認証状態を扱う

## レクチャーの目的

Spring Boot APIでCognito発行JWTの署名とクレームを検証する

## 進行

- Issuer、JWK、AudienceまたはClient IDの設定を確認する
- 未認証・不正トークン・認証済みリクエストを比較する

## 成果物

- JWT検証済みのSpring Security設定

## 動作確認

- 認証済みリクエストだけが保護APIへ到達できる

## 実装ファイル

- `backend/src/main/java/com/pocotech/aidd/security/SecurityConfig.java`
- `backend/src/main/resources/application-aws.yml`

## 収録メモ

- ナレーション: ElevenLabsで場面単位に生成し、AWS・Spring・Terraformの用語発音を確認する。
- スクリーンキャスト: 講師が実際の操作と検証結果を収録する。
- Codexの提案は、差分・テスト・実行結果を確認してから採用する。

## コミット

このレクチャー終了時のコミットメッセージは、レクチャー名と同じ **Spring Security Resource ServerでJWTを検証する** とする。
