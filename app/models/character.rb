class Character < ApplicationRecord
    has_many :comments
    validates :name, presence: true, length: {minimum: 5}
    validates :sex, presence: true, length: {maximum: 1}
    validates :age, presence: true, length: {maximum: 4}
    validates :race, presence: true, length: {minimum: 3, maximum: 12}
    validates :job, length: {maximum: 12}
    validates :birthday, length: {maximum: 15}
    validates :magic, length: {maximum: 1}
    validates :birth, length: {maximum: 20}
    validates :country, length: {maximum: 20}
    validates :personality, length: {maximum: 512}
    validates :backstory, length: {maximum: 2560}
end
