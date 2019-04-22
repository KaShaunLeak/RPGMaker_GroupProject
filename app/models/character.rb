class Character < ApplicationRecord
    validates :name, presence: true, length: {minimum: 5}
    validates :sex, presence: true, length: {minimum: 1, maximum: 1}
    validates :age, presence: true, length: {minimum: 1, maximum: 3}
    validates :race, presence: true, length: {minimum: 3, maximum: 15}
    validates :job, presence: true, length: {maximum: 15}
    validates :birthday, presence: true, length: {maximum: 20}
    validates :birth, presence: true, length: {maximum: 20}
    validates :country, presence: true, length: {maximum: 20}
    validates :personality, presence: true, length: {minimum: 0, maximum: 150}
    validates :backstory, presence: true, length: {minimum: 0, maximum: 512}
end
