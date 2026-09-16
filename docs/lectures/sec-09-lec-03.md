# ALB・Target Group・Security Group

- レクチャーID: `sec-09-lec-03`
- セクション: 9. ALB・Auto Scaling・Multi-AZを実装する
- 種別: `coding`
- 目安時間: 8分
- ステータス: `planned`

## セクションの目的

単一EC2構成を、負荷分散・自動復旧・データベース高可用性を備えた2AZ構成へ拡張する

## レクチャーの目的

ALBからHealthyなEC2へリクエストを転送する構成をTerraformで作る

## Codexへの指示文

以下をそのままCodexに渡し、出力された差分と検証結果を確認してから採用します。

```text
あなたはこのリポジトリのシニア開発者です。Codexを使ったAIDDの一環として、次のレクチャーだけを実施してください。

レクチャーID: sec-09-lec-03
目的: ALBからHealthyなEC2へリクエストを転送する構成をTerraformで作る
セクションの前提: 単一EC2構成を、負荷分散・自動復旧・データベース高可用性を備えた2AZ構成へ拡張する

依頼:
- ALB、listener、Target Group、health checkを定義する
- ALBからEC2だけを許可するSecurity Groupへ変更する

対象範囲（実際の分割はレビューで調整可）:
- infra/load_balancer.tf
- infra/security_groups.tf

方針:
- 既存コードを読み、責務を分けた小さな差分で実装してください。実装後にテストまたは手動確認を実行してください。
- 既存の実装・規約・カリキュラムを先に読み、無関係なリファクタリングをしない。
- AWSの実リソースを変更する場合は、適用前にTerraform planとコスト影響を確認する。
- シークレット、アクセストークン、個人情報、実アカウント固有値をコードや資料へ書き込まない。
- 変更後は差分を要約し、実行したコマンドと結果、未解決リスクを報告する。

完了条件:
- ALBとTarget GroupのTerraformコード

検証:
- ALB経由でアプリへアクセスでき、TargetがHealthyになる

この依頼の範囲を越える変更は行わず、判断が必要な点は実装前に質問または仮定として明示してください。
```

## 進行

- ALB、listener、Target Group、health checkを定義する
- ALBからEC2だけを許可するSecurity Groupへ変更する

## 生成される目安の成果物

実際のファイル分割やパスは、Codexの提案とレビューで変わって構いません。収録時点では次を目安にします。

- `infra/load_balancer.tf` — Terraform定義の目安
- `infra/security_groups.tf` — Terraform定義の目安

## 動作確認

- ALB経由でアプリへアクセスでき、TargetがHealthyになる

## 収録メモ

- まずCodexへの指示文を提示し、生成された差分・テスト・実行結果を確認する。
- ナレーションはElevenLabsで場面単位に生成し、AWS・Spring・Terraformの用語発音を確認する。
- スクリーンキャストは講師が実際の操作と検証結果を収録する。

## コミット

このレクチャー終了時のコミットメッセージは、レクチャー名と同じ **ALB・Target Group・Security Group** とする。
