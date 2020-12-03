class Tagging < ApplicationRecord
  belongs_to :queuecard
  belongs_to :tag
end
