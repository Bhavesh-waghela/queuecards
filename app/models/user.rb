class User < ApplicationRecord
	has_many :queuecards, dependent: :destroy
	has_many :tags, dependent: :destroy
end
