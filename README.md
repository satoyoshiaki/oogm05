# README
## 2020.6/2更新。現在は未完成です。(内容が変わる可能性大)
![アプリ２ (1)](https://user-images.githubusercontent.com/59597733/83839088-03ad8f00-a736-11ea-8183-3669af873a90.png)
### ゲームマッチングアプリ
### 概要
自分の好きなゲーム誰かと一緒に遊びたいときにマッチング出来るアプリです。条件設定をを設定することで好きなプレイスタイルで遊ぶことができます！
### バージョン
Ruby 2.6.5 Rails 5.2.4
### 機能一覧
* ログイン機能
* Google認証ができる
* ユーザー登録機能（名前、メールアドレス、パスワードは必須）
* ユーザー編集機能
* 募集一覧表示機能
* 募集新規登録機能
* 募集編集機能 募集した人のみが可能。
* ダイレクトメッセージ機能
* 募集詳細画面でコメントが書ける。
* コメントの編集と削除が出来る 編集と削除は書いた本人のみ可能。
* 条件指定で絞り込み検索ができる

### カタログ設計、テーブル定義、画面遷移図、画面ワイヤーフレーム
https://docs.google.com/spreadsheets/d/1DkGX1KVGxSzz_b6d6LcHKUooEzKW2mMUZu7ky9iYElU/edit?usp=sharing
### 使用予定gem
* carrierwave
* mini_magic
* devise
* devise-i18n
* admin
* ransack
* rails_admin
* cancancan
* bootstrap 4.4.1'
* kaminari
* letter_opener_web
* bullet
* pry-rails
* better_errors
* binding_of_caller
