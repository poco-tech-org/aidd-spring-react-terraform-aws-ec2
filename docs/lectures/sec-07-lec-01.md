# Terraformプロジェクト・変数・state

- レクチャーID: `sec-07-lec-01`
- セクション: 7. TerraformでAWS基盤を構築する
- 種別: `coding`
- 目安時間: 7分
- ステータス: `planned`

## セクションの目的

AWSリソースをコード化し、2AZのネットワークとアプリ基盤を再現可能にする

## レクチャーの目的

Terraformの構成、入力値、stateの役割を理解し、安全な変更の基礎を作る

## Codexへの指示文

以下をそのままCodexに渡し、出力された差分と検証結果を確認してから採用します。

```text
あなたはこのリポジトリのシニア開発者です。Codexを使ったAIDDの一環として、次のレクチャーだけを実施してください。

レクチャーID: sec-07-lec-01
目的: Terraformの構成、入力値、stateの役割を理解し、安全な変更の基礎を作る
セクションの前提: AWSリソースをコード化し、2AZのネットワークとアプリ基盤を再現可能にする

依頼:
- provider、variables、outputs、backendの構成を決める
- terraform fmt、validate、planの流れを実行する

対象範囲（実際の分割はレビューで調整可）:
- infra/versions.tf
- infra/provider.tf
- infra/variables.tf
- infra/terraform.tfvars.example

方針:
- 既存コードを読み、責務を分けた小さな差分で実装してください。実装後にテストまたは手動確認を実行してください。
- 既存の実装・規約・カリキュラムを先に読み、無関係なリファクタリングをしない。
- AWSの実リソースを変更する場合は、適用前にTerraform planとコスト影響を確認する。
- シークレット、アクセストークン、個人情報、実アカウント固有値をコードや資料へ書き込まない。
- 変更後は差分を要約し、実行したコマンドと結果、未解決リスクを報告する。

完了条件:
- Terraformプロジェクトの骨格

検証:
- 変更内容をplanで確認してからapplyできる

この依頼の範囲を越える変更は行わず、判断が必要な点は実装前に質問または仮定として明示してください。
```

## 進行

- provider、variables、outputs、backendの構成を決める
- terraform fmt、validate、planの流れを実行する

## 生成される目安の成果物

実際のファイル分割やパスは、Codexの提案とレビューで変わって構いません。収録時点では次を目安にします。

- `infra/versions.tf` — Terraform定義の目安
- `infra/provider.tf` — Terraform定義の目安
- `infra/variables.tf` — Terraform定義の目安
- `infra/terraform.tfvars.example` — 関連成果物の目安

## 動作確認

- 変更内容をplanで確認してからapplyできる

## 収録メモ

- まずCodexへの指示文を提示し、生成された差分・テスト・実行結果を確認する。
- ナレーションはElevenLabsで場面単位に生成し、AWS・Spring・Terraformの用語発音を確認する。
- スクリーンキャストは講師が実際の操作と検証結果を収録する。

## コミット

このレクチャー終了時のコミットメッセージは、レクチャー名と同じ **Terraformプロジェクト・変数・state** とする。
