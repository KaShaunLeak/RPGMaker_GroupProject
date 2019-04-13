class Character < ApplicationRecord
    has_many :comments
    validates :title, presence: true, length: {minimum: 5}
    validates :title, presence: true, length: {minimum: 10}
end
