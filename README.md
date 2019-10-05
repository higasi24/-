# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
## usersテーブル
|column|Type|Option|
|-------|----|-----|
|email|string|null false|
|password|string|null false|
|nickname|string|null false|
|first_name|string|null false|
|first_name_kana|string|null false|
|family_name|string|null false|
|family_name_kana|string|null false|
|birth_year|int|null false|
|birth_month|int|null false|
|birth_day|int|null false|
|prefecture|string|null false|
|city|string|null false|
|block|string|null false|
|building|string||
|tel|int|null false, unique|
|credit|string|unique|

### Association
- has_many :items
- has_many :favorites
- has_many :orders
- has_many :reviews
- has_many :comments
- has_many :messages

## itemsテーブル
|columm|Type|Option|
|-------|----|-----|
|name|string|null false|
|detail|text||
|state|string|null false|
|delivery_fee|string|null false|
|price|int|null false|
|delivery_method|string|null false|
|delivery_date|string|null false|
|buyer_id|int|null false, unique, foreign_key: true|
|seller_id|int|null false, unique, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :area
- belongs_to :brand
- has_many :images
- has_many :categories, through: :categories_items
- has_many :favorites
- has_many :comments
- has_many :messages

## categories_itemsテーブル
|columm|Type|Option|
|-------|----|-----|

### Association
- belongs_to :category
- belongs_to :item

## imagesテーブル
|columm|Type|Option|
|-------|----|-----|
|image|string|null false|

### Association
- belongs_to :item

## reviewsテーブル
|columm|Type|Option|
|-------|----|-----|
|review|int|null false|
|text|text||

### Association
- belongs_to :user

## categoriesテーブル
|columm|Type|Option|
|-------|----|-----|
|category|string|null false, unique|
|parent_id|int||


### Association
- has_many :items,  through: :categories_items
- belongs_to :parent, class_name: :Category
- has_many :children, class_name: :Category, foreign_key: :parent_id

## brandsテーブル
|columm|Type|Option|
|-------|----|-----|
|brand|string|null false, unique|
|parent_id|int||

### Association
- has_many :items
- belongs_to :parent, class_name: :Brand
- has_many :children, class_name: :Brand, foreign_key: :parent_id

## areasテーブル
|columm|Type|Option|
|-------|----|-----|
|area|string|null false, unique|

### Association
- has_many :items

## commentsテーブル 
|columm|Type|Option|
|-------|----|-----|
|comment|text|null false|

### Association
- belongs_to :item

## favoritesテーブル
|columm|Type|Option|
|-------|----|-----|

### Association
- belongs_to :item
- belongs_to :user

## messagesテーブル 
|columm|Type|Option|
|-------|----|-----|
|message|text|null false|

### Association
- belongs_to :item
- belongs_to :user

## ordersテーブル
|columm|Type|Option|
|-------|----|-----|
|name|string|null false|
|detail|text||
|state|string|null false|
|delivery_fee|string|null false|
|price|int|null false|
|delivery_method|string|null false|
|delivery_date|string|null false|
|buyer_id|int|null false, unique, foreign_key: true|
|seller_id|int|null false, unique, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
