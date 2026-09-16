# 講座カリキュラム

このファイルは、`curriculum.yaml` に定義した講座セクションとレクチャーを人間向けに整理したものです。機械処理を行う場合は `curriculum.yaml` を正本として利用し、構造の検証には `schema/curriculum.schema.json` を利用します。

## 講座概要

| 項目 | 内容 |
|---|---|
| タイトル | AI駆動開発で作るSpring Boot × Reactアプリ：TerraformでAWS EC2本番構成 |
| サブタイトル | Cognito認証・RDS Multi-AZ・ALB・EC2 Auto Scalingまで実装して動作確認 |
| 想定時間 | 約4時間30分（270分） |
| レクチャー数 | 44 |
| ナレーション | ElevenLabsによるTTS音声 |
| スクリーンキャスト | 講師自身が収録 |

## 到達目標

- Codexを使って、要件整理・設計・実装・テスト・レビューのAIDDサイクルを実践する。
- Spring BootとReactで認証付きWebアプリを構築する。
- CognitoのJWTをSpring Boot APIで検証し、ユーザー単位の認可を実装する。
- TerraformでVPC、EC2、ALB、Auto Scaling、RDSを構築する。
- RDS Multi-AZとEC2 Auto ScalingをAWSマネジメントコンソールで確認する。
- スケールアウト、自動復旧、フェイルオーバーを検証し、最後にAWSリソースを削除する。

## 構成方針

- ALBを2つのAvailability Zoneに配置する。
- Spring BootアプリをEC2 Auto Scaling Groupで実行する。
- アプリケーション用EC2とRDSをプライベートサブネットに配置する。
- RDS for PostgreSQLをMulti-AZ構成にする。
- Terraformの`plan`・`apply`後に、AWSマネジメントコンソールで実リソースを確認する。
- Codexの生成物は、講師が設計・テスト・動作確認・レビューを行ってから採用する。

## セクション一覧

| # | セクション | レクチャー数 | 時間 |
|---:|---|---:|---:|
| 1 | 講座の全体像と完成形 | 3 | 15分 |
| 2 | AIDD開発の準備と進め方 | 4 | 21分 |
| 3 | Spring Bootバックエンドを作る | 5 | 32分 |
| 4 | Reactフロントエンドを作る | 4 | 24分 |
| 5 | Cognito認証を組み込む | 4 | 28分 |
| 6 | ローカル統合と品質確認 | 4 | 22分 |
| 7 | TerraformでAWS基盤を構築する | 5 | 38分 |
| 8 | EC2へデプロイする | 4 | 26分 |
| 9 | ALB・Auto Scaling・Multi-AZを実装する | 6 | 45分 |
| 10 | 総合動作確認と講座の仕上げ | 5 | 19分 |
| **合計** |  | **44** | **270分** |

## レクチャー一覧

### 1. 講座の全体像と完成形

完成するアプリとAWS構成を把握し、学習の到達点を明確にする。

| ID | レクチャー | 種別 | 時間 | 完了条件 |
|---|---|---|---:|---|
| sec-01-lec-01 | 講座のゴールと完成デモ | concept | 5分 | 完成形の主要画面とAPIの流れを説明できる |
| sec-01-lec-02 | アーキテクチャと技術選定 | concept | 5分 | 各サービスの責務と通信経路を説明できる |
| sec-01-lec-03 | 開発環境・AWS料金・削除方針 | setup | 5分 | CLIの確認とAWS認証確認が完了する |

### 2. AIDD開発の準備と進め方

Codexを活用しつつ、講師が設計と検証の責任を持つ開発サイクルを作る。

| ID | レクチャー | 種別 | 時間 | 完了条件 |
|---|---|---|---:|---|
| sec-02-lec-01 | Codexを開発パートナーとして使う | concept | 5分 | 完了条件付きの依頼を作成できる |
| sec-02-lec-02 | AGENTS.mdとリポジトリ規約 | setup | 5分 | Codexがリポジトリ規約を参照できる |
| sec-02-lec-03 | 要求をタスクへ分解し実装計画を作る | exercise | 6分 | 各タスクに実装内容と完了条件がある |
| sec-02-lec-04 | AI生成コードのレビューと検証 | review | 5分 | 生成コードの採用理由と修正点を説明できる |

### 3. Spring Bootバックエンドを作る

認証とデータベースを後から組み込める、テスト可能なREST APIを実装する。

| ID | レクチャー | 種別 | 時間 | 完了条件 |
|---|---|---|---:|---|
| sec-03-lec-01 | Spring Bootプロジェクト作成と起動確認 | coding | 6分 | アプリが起動し、ヘルス確認が成功する |
| sec-03-lec-02 | ドメインモデルとREST API設計 | concept | 7分 | 主要ユースケースのAPI契約を説明できる |
| sec-03-lec-03 | PostgreSQL接続とFlywayマイグレーション | coding | 7分 | 空のDBから同じスキーマを再現できる |
| sec-03-lec-04 | CRUD APIとバリデーション | coding | 7分 | APIクライアントからCRUDを実行できる |
| sec-03-lec-05 | テスト・例外処理・Actuator health | coding | 5分 | テスト成功とヘルスチェック200を確認できる |

### 4. Reactフロントエンドを作る

認証とAPI連携を追加できる、操作可能なReact画面を作る。

| ID | レクチャー | 種別 | 時間 | 完了条件 |
|---|---|---|---:|---|
| sec-04-lec-01 | ReactプロジェクトとAPIクライアント | coding | 6分 | ReactからローカルAPIの疎通を確認できる |
| sec-04-lec-02 | タスク一覧・登録・編集画面 | coding | 7分 | ブラウザから主要CRUDを完了できる |
| sec-04-lec-03 | ローディング・エラー・フォーム状態 | coding | 6分 | 主要な成功・エラー状態を再現できる |
| sec-04-lec-04 | Reactのビルドとバックエンド連携 | demo | 5分 | 本番ビルドが成功しAPIへ接続できる |

### 5. Cognito認証を組み込む

Cognitoでログインし、ReactとSpring Boot APIの両方で認証状態を扱う。

| ID | レクチャー | 種別 | 時間 | 完了条件 |
|---|---|---|---:|---|
| sec-05-lec-01 | Cognito User PoolとApp Client | concept | 6分 | 認証フローと設定値の用途を説明できる |
| sec-05-lec-02 | ReactのAuthorization Code + PKCEログイン | coding | 8分 | ログイン後に認証済みAPIを呼び出せる |
| sec-05-lec-03 | Spring Security Resource ServerでJWTを検証する | coding | 8分 | 保護APIが不正トークンを拒否する |
| sec-05-lec-04 | ユーザー単位の認可と認証テスト | exercise | 6分 | ユーザー間のデータ分離がテストで保証される |

### 6. ローカル統合と品質確認

AWSへ進む前に、ローカル環境で主要フローを再現可能にする。

| ID | レクチャー | 種別 | 時間 | 完了条件 |
|---|---|---|---:|---|
| sec-06-lec-01 | Docker Composeとローカル環境変数 | setup | 5分 | クリーンな環境からアプリを起動できる |
| sec-06-lec-02 | ログインからCRUDまでの統合確認 | demo | 5分 | 主要ユーザーフローをローカルで再現できる |
| sec-06-lec-03 | 統合テストとAPI契約の確認 | coding | 7分 | 主要統合テストが成功する |
| sec-06-lec-04 | 本番ビルド成果物とリリースチェック | review | 5分 | 同じコミットから成果物を再生成できる |

### 7. TerraformでAWS基盤を構築する

AWSリソースをコード化し、2AZのネットワークとアプリ基盤を再現可能にする。

| ID | レクチャー | 種別 | 時間 | 完了条件 |
|---|---|---|---:|---|
| sec-07-lec-01 | Terraformプロジェクト・変数・state | coding | 7分 | planで確認してからapplyできる |
| sec-07-lec-02 | VPC・2AZサブネット・ルート | coding | 10分 | 各サブネットとルートを確認できる |
| sec-07-lec-03 | Security Group・IAM・Instance Profile | coding | 7分 | 必要な通信だけが許可されている |
| sec-07-lec-04 | Cognito・RDS PostgreSQL・サブネットグループ | coding | 8分 | CognitoとRDSをコンソールで確認できる |
| sec-07-lec-05 | plan・applyとAWSコンソール確認 | demo | 6分 | コード、state、コンソール表示が一致する |

### 8. EC2へデプロイする

Spring BootアプリをEC2で再現可能に起動し、ログと設定を確認できるようにする。

| ID | レクチャー | 種別 | 時間 | 完了条件 |
|---|---|---|---:|---|
| sec-08-lec-01 | JARビルドとアーティファクト配布 | coding | 6分 | 同じ手順で成果物を作成できる |
| sec-08-lec-02 | EC2・Launch Template・user data・systemd | coding | 7分 | 新しいEC2でもアプリが自動起動する |
| sec-08-lec-03 | 設定・Secrets・SSM・ログ | demo | 7分 | アプリ設定と起動ログを安全に確認できる |
| sec-08-lec-04 | デプロイ後のスモークテストとトラブルシュート | demo | 6分 | EC2上の主要フローが成功する |

### 9. ALB・Auto Scaling・Multi-AZを実装する

単一EC2構成を、負荷分散・自動復旧・データベース高可用性を備えた2AZ構成へ拡張する。

| ID | レクチャー | 種別 | 時間 | 完了条件 |
|---|---|---|---:|---|
| sec-09-lec-01 | 単一EC2の限界と2AZ構成の設計 | concept | 6分 | ASGとRDS Multi-AZの目的を説明できる |
| sec-09-lec-02 | ステートレスSpringとALBヘルスチェック | coding | 7分 | どのEC2でも同じ認証・API動作になる |
| sec-09-lec-03 | ALB・Target Group・Security Group | coding | 8分 | ALB経由でアクセスしTargetがHealthyになる |
| sec-09-lec-04 | Launch Template・Auto Scaling・Target Tracking | coding | 9分 | ASGが2AZへ配置しALBへ登録する |
| sec-09-lec-05 | スケールアウトとEC2自動復旧の確認 | demo | 7分 | 台数増加と異常インスタンス補充を確認できる |
| sec-09-lec-06 | RDS Multi-AZ・フェイルオーバー・コンソール確認 | demo | 8分 | フェイルオーバー後にアプリが復旧する |

### 10. 総合動作確認と講座の仕上げ

実装、インフラ、コンソール確認、教材を提出可能な品質へ揃える。

| ID | レクチャー | 種別 | 時間 | 完了条件 |
|---|---|---|---:|---|
| sec-10-lec-01 | CognitoからRDSまでの総合フローテスト | demo | 5分 | 本番構成で主要ユーザーフローが完了する |
| sec-10-lec-02 | Terraform plan差分とコンソールの照合 | review | 4分 | 意図しない差分が残っていない |
| sec-10-lec-03 | 障害シナリオとロールバック | exercise | 4分 | 障害ごとの復旧操作を説明できる |
| sec-10-lec-04 | destroy・コスト・セキュリティ最終確認 | release | 3分 | 不要リソースと秘密情報が残っていない |
| sec-10-lec-05 | リポジトリとUdemy講座の提出準備 | release | 3分 | リポジトリと講座を再現手順で利用できる |

## 最終品質ゲート

- ローカルでバックエンド、フロントエンド、認証、CRUDの主要フローが成功する。
- Terraformの`validate`、`plan`、`apply`が成功し、主要リソースをコンソールで確認できる。
- ALBのTarget GroupがHealthyになり、Auto Scalingのスケールアウトと自動復旧を確認できる。
- RDSのMulti-AZ、Secondary AZ、フェイルオーバー後のアプリ復旧を確認できる。
- AWSアクセスキー、パスワード、トークン、秘密情報がリポジトリに含まれない。
- 検証後に不要なAWSリソースを削除し、講座説明・AI利用開示・動画・READMEを確認する。
