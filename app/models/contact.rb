class Contact < ApplicationRecord
    has_many :givemealerts, dependent: :destroy
    
    validates :firstname, presence: true
    validates :lastname, presence: true
end
