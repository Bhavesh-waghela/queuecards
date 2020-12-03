class Tag < ApplicationRecord
  belongs_to :user

  has_many :taggings, dependent: :destroy
  has_many :queuecards, through: :taggings

  validates :name, presence: true, uniqueness: {scope: :user_id}
end
