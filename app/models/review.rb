class Review < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_one_attached :image

  belongs_to_active_hash :category

  with_options presence: true do
  validates :image
  validates :item_name
  validates :content
  validates :rate
  end

  validates :category_id, numericality: { other_than: 1, message:'Select' }
end

