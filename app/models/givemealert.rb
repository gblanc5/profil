class Givemealert < ApplicationRecord
  belongs_to :contact

  validates :sendtodate, presence: true
  validates :sendtowho, presence: true
end
