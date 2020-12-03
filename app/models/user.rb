class User < ApplicationRecord
	has_many :queuecards, dependent: :destroy
end
