# README

## アプリケーション名
Men's up Cosme 　〜 メンズアップコスメ 〜

## 概要
現在の日本では『男性もスキンケアをする時代』へと変わりつつある。<br>
しかしアイテム数の拡大に伴い、一般の男性消費者にとっては身だしなみのためにスキンケアをしたいけど『種類が多くて何を使えばよいかわからない』という課題がある。<br>
そんなお悩みを解決する検索機能の充実したメンズコスメレビューサイト。<br>

### 『Men's up Cosme』でできること
- 充実した商品検索（探したい商品が簡単に見つかる）
- レビューへのコメント機能（気になった商品を更に詳しく知りたいときに気軽に質問ができる）
- ユーザーフォロー（有益なレビューをしてるユーザーをフォローすることができる）

## 本番環境

### IPアドレス
54.95.233.105<br>

### Basic認証
<dl>
  <dt>ユーザー名</dt>
  <dd>msup</dd>
  <dt>パスワード</dt>
  <dd>4321</dd>
</dl>

テストユーザー機能よりログイン下さい。<br>
※アプリ確認後はログアウトの程、よろしくお願い致します。

## 制作背景

### 市場状況
近年の日本では、女性の社会進出による周りからの目線や、D&I（Diversity ＆ Inclusion）の推進、ジェンダーレス社会の浸透により、メンズコスメの使用率が拡大し、市場規模はこの10年間で約120%と、年2%の継続伸長を続けている。<br>
この時代の変化に伴い、大手化粧品メーカーは続々と男性用の化粧品を新発売し、今やドラッグストアの中でもメンズコスメカテゴリーは非常に重要な売上拡大の要素となり、品揃えが益々拡充している状況である。<br>

### 消費者状況
しかし、一般の男性消費者の目線で見てみると、どんどん新製品が発売されるが正直商品の違いがよくわからないという男性が多いのが実情である。<br>
また女性用の化粧品と違い、まだまだメンズコスメの情報は少ない。<br>
そのため実際に購入してみたものの使用感や効果に満足できず、継続購入につながらないという現状があり、これはメーカー側にとっても課題となっている。<br>

### 開発の背景
こうした課題を解決するために、実際に商品を使用した男性のレビュー特化サイトにより、『どんな化粧品か知りたい』という一般の男性のお悩みを解決するアプリ開発に着手した。<br>
また継続購入につなげることで小売業の売上拡大やメーカーの出荷も進み、更なるメンズコスメ市場の拡大に貢献するプラットフォームとして『Men's up Cosme』のサービスをご提供する。

## 使用技術

### バックエンド

- Ruby 2.6.5
- Ruby on Rails 6.0.0

### フロントエンド

- HTML、CSS
- JavaScript

### データベース

- MySQL 14.14
- SequelPro

### インフラ

- AWS
  - VPC
  - EC2
  - S3
- Capistrano

### Webサーバー（本番環境）

- Nginx 1.18.0

### アプリケーションサーバー（本番環境）

- Unicorn 5.4.1

### ソース管理

- GitHub、GitHubDesktop

### テスト

- Rspec

### その他

- Trello（タスク管理）
- Slack（コミュニケーション）

## 機能一覧

- ユーザー登録、ログイン機能（devise）
- レビュー投稿機能
  - 画像投稿（AWS S3）
  - 星評価機能
- ユーザー詳細表示、マイページ機能
- ユーザーフォロー機能
- レビューコメント投稿機能
- レビュー検索機能（ransack）

## テスト

- 単体テスト（model）

## DEMO

### トップページ

![00  トップ画面](https://user-images.githubusercontent.com/70381096/96373545-1d60e780-11a8-11eb-8d06-580eb15a0dee.jpg)

- トップページをひと目見てアプリの使用方法がわかるデザイン
- ログイン有無でヘッダーの表示変更

### ユーザー登録機能

![ユーザー新規登録](https://user-images.githubusercontent.com/70381096/96371203-84c46a80-119b-11eb-9e36-fbe108a61214.gif)

- 年齢・肌タイプはプルダウン形式にて選択（ActiveHash）
- 登録内容に不備があった場合、エラー文を表示

### レビュー投稿

![02  レビュー投稿](https://user-images.githubusercontent.com/70381096/96371810-a4a95d80-119e-11eb-8e93-ded8aa83c916.gif)

- 画像投稿機能（ActiveStorage）
- 星評価機能を実装

### レビュー一覧表示

![03  レビュー一覧表示](https://user-images.githubusercontent.com/70381096/96372091-4e3d1e80-11a0-11eb-96e1-bb7da38b956b.gif)

- 最新の投稿が一番上に表示される
- レビューテキストは長文の場合、冒頭の文の未表示。詳細画面にて全文表示。

### レビュー編集・削除機能

![04  レビュー編集・削除](https://user-images.githubusercontent.com/70381096/96371904-1a152e00-119f-11eb-8a18-2a2fe54e8c1b.gif)

- レビューの編集・削除が可能
- 投稿したユーザーのみ編集・削除ボタンを表示する仕様

### レビュー詳細表示

<img width="1097" alt="05  レビュー詳細表示" src="https://user-images.githubusercontent.com/70381096/96373945-a24d0080-11aa-11eb-85a0-0772e020fa34.png">

- 一覧画面では一部表示だったレビュー文を全文表示
- 投稿者のユーザー名からユーザー詳細画面に遷移できる
- コメント投稿機能（未ログイン者はコメントできない仕様）

### レビュー検索機能

![06  レビュー検索](https://user-images.githubusercontent.com/70381096/96372397-8f81fe00-11a1-11eb-9883-93bb56dee149.gif)

- 複数条件選択による検索機能（ransack）
- 探したい商品が簡単に見つかる
- 検索結果画面では、検索クエリを表示

### コメント機能

![07  コメント投稿](https://user-images.githubusercontent.com/70381096/96372561-59914980-11a2-11eb-938d-aaa4540e1b1e.gif)

- レビュー詳細画面にてコメントによる交流可能
- 最新のコメントが上に表示される仕様
- ログインしていないユーザーはコメントができない仕様

### ユーザー詳細画面

![08  ユーザー詳細表示](https://user-images.githubusercontent.com/70381096/96372760-66fb0380-11a3-11eb-9f07-1dd694ae6f18.gif)

- 自身のマイページ、投稿しているユーザーの詳細を表示
- ユーザーが投稿したレビューを一覧表示

### ユーザーフォロー機能

![09  ユーザーフォロー機能](https://user-images.githubusercontent.com/70381096/96372887-10da9000-11a4-11eb-8420-adfbdf20777a.gif)


- 他のユーザーをフォローできる
- フォロー中一覧、フォロワー一覧を表示することができる


## 開発を進めるにあたり工夫したポイント

- 実際の開発現場でのタスクの進め方をイメージし、実践に近い形で開発を進めた
  - GitHubで機能実装ごとにブランチ作成。作業ごとに細かくコミットし、プッシュを実行
  - 要件定義やデータベース設計をしっかりと実施
  - 画面遷移図を作成し、画面ごとのビューのイメージを作成
<img width="1171" alt="10  要件定義・データベース設計" src="https://user-images.githubusercontent.com/70381096/96373219-fd302900-11a5-11eb-974e-97b2e2e00568.png">
<img width="1157" alt="11  画面遷移図・ビューイメージ" src="https://user-images.githubusercontent.com/70381096/96373500-d3780180-11a7-11eb-84e7-7c31e3cd04f1.png">

## 課題や今後実装したい機能

- レビューお気に入り登録機能
  - 自分の気になる商品をお気に入り登録することで、情報により簡単にアクセスできる。
- コメント非同期通信
  - より円滑なコミュニケーションよるユーザビリティの向上を目指す。

## データベース設計

## users テーブル

| Column          | Type    | Options     |
| --------------- | ------- | ----------- |
| nicname         | string  | null: false |
| email           | string  | null: false |
| password        | string  | null: false |
| last_name       | string  | null: false |
| first_name      | string  | null: false |
| last_name_kana  | string  | null: false |
| first_name_kana | string  | null: false |
| age_id          | integer | null: false |
| skintype_id     | integer | null: false |

### Association

- has_many :reviews
- has_many :comments

## reviews テーブル

| Column            | Type        | Options                        |
| ----------------- | ----------- | ------------------------------ |
| item_name         | string      | null: false                    |
| item_brand        | integer     | null: false                    |
| item_maker        | integer     | null: false                    |
| content           | text        | null: false                    |
| rate              | float       | null: false                    |
| category_id       | integer     | null: false                    |
| user              | references  | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| user             | references | null: false, foreign_key: true |
| review           | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :review

## relationships テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| following        | references | null: false, foreign_key: true |
| follower         | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :review