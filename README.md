# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|

### Association
- has_many :posts
- has_many :comments

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|content|text|null: false|
|image|string|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: falese|
|post_id|integer|null: falese|

### Association
- belongs_to :user
- belongs_to :post


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
