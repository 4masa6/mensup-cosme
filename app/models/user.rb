class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :age
  belongs_to_active_hash :skintype
  has_many :reviews
  has_many :comments

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname
    validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: 'Full-width characters' }
    validates :last_name, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: 'Full-width characters' }
    validates :first_name_kana, format: { with: /\A[ァ-ン]+\z/, message: 'Full-width katakana characters' }
    validates :last_name_kana, format: { with: /\A[ァ-ン]+\z/, message: 'Full-width katakana characters' }
  end

  validates :age_id, numericality: { other_than: 1 }
  validates :skintype_id, numericality: { other_than: 1 }
end
