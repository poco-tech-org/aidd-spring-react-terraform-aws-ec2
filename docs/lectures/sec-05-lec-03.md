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

## Codexへの指示文

以下をそのままCodexに渡し、出力された差分と検証結果を確認してから採用します。

```text
あなたはこのリポジトリのシニア開発者です。Codexを使ったAIDDの一環として、次のレクチャーだけを実施してください。

レクチャーID: sec-05-lec-03
目的: Spring Boot APIでCognito発行JWTの署名とクレームを検証する
セクションの前提: Cognitoでログインし、ReactとSpring Boot APIの両方で認証状態を扱う

依頼:
- Issuer、JWK、AudienceまたはClient IDの設定を確認する
- 未認証・不正トークン・認証済みリクエストを比較する

対象範囲（実際の分割はレビューで調整可）:
- backend/src/main/java/com/pocotech/aidd/security/SecurityConfig.java
- backend/src/main/resources/application-aws.yml

方針:
- 既存コードを読み、責務を分けた小さな差分で実装してください。実装後にテストまたは手動確認を実行してください。
- 既存の実装・規約・カリキュラムを先に読み、無関係なリファクタリングをしない。
- AWSの実リソースを変更する場合は、適用前にTerraform planとコスト影響を確認する。
- シークレット、アクセストークン、個人情報、実アカウント固有値をコードや資料へ書き込まない。
- 変更後は差分を要約し、実行したコマンドと結果、未解決リスクを報告する。

完了条件:
- JWT検証済みのSpring Security設定

検証:
- 認証済みリクエストだけが保護APIへ到達できる

この依頼の範囲を越える変更は行わず、判断が必要な点は実装前に質問または仮定として明示してください。
```

## 進行

- Issuer、JWK、AudienceまたはClient IDの設定を確認する
- 未認証・不正トークン・認証済みリクエストを比較する

## 生成される目安の成果物

実際のファイル分割やパスは、Codexの提案とレビューで変わって構いません。収録時点では次を目安にします。

- `backend/src/main/java/com/pocotech/aidd/security/SecurityConfig.java` — Spring Boot設定・コードの目安
- `backend/src/main/resources/application-aws.yml` — Spring Boot設定・コードの目安

## 動作確認

- 認証済みリクエストだけが保護APIへ到達できる

## 収録メモ

- まずCodexへの指示文を提示し、生成された差分・テスト・実行結果を確認する。
- ナレーションはElevenLabsで場面単位に生成し、AWS・Spring・Terraformの用語発音を確認する。
- スクリーンキャストは講師が実際の操作と検証結果を収録する。

## コミット

このレクチャー終了時のコミットメッセージは、レクチャー名と同じ **Spring Security Resource ServerでJWTを検証する** とする。
