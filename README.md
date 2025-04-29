# A2A Docker

このプロジェクトは、Google の [A2A (Agent-to-Agent)](https://github.com/google/A2A) デモアプリケーションを Docker コンテナで簡単に実行するためのものです。

## 概要

A2A は、異なるエージェント間でのコミュニケーションを可能にするプロトコルです。このプロジェクトでは、A2A リポジトリに含まれるデモアプリケーションを Docker コンテナ内で実行できるようにしています。

## 前提条件

- Docker
- Google AI Studio API キー（または Vertex AI の認証情報）

## 使用方法

### 1. Docker イメージのビルド

```bash
docker build -t a2a-demo .
```

### 2. 環境変数の設定

`.env.sample` ファイルを `.env` にコピーし、実際の API キーを設定します。

```bash
cp .env.sample .env
```

`.env` ファイルを編集して、`your_api_key_here` を実際の Google API キーに置き換えてください。

### 3. コンテナの実行

```bash
docker run -it --rm -p 12000:12000 -v ${pwd}/.env:/app/demo/ui/.env a2a-demo
```

### 4. アプリケーションへのアクセス

ブラウザで http://localhost:12000 を開いてデモアプリケーションにアクセスします。

## A2A デモアプリケーションの機能

- **エージェントの動的追加**: ロボットアイコンをクリックして新しいエージェントを追加できます。
- **複数のエージェントとの会話**: チャットボタンをクリックして会話を開始または継続できます。
- **A2A タスクの探索**: 履歴をクリックしてメッセージを確認したり、タスクリストをクリックして A2A タスクの更新を確認できます。

詳細については、[A2A リポジトリの demo/README.md](https://github.com/google/A2A/blob/main/demo/README.md) を参照してください。
