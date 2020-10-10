class Review < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_one_attached :image
  has_many :comments

  belongs_to_active_hash :category

  with_options presence: true do
  validates :image
  validates :item_name
  validates :item_brand
  validates :item_maker
  validates :content
  validates :rate
  end

  validates :category_id, numericality: { other_than: 1, message:'Select' }
end

