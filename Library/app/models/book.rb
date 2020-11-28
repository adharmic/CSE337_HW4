class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :isbn, presence: true, length: {minimum: 10, maximum: 10}
    validates :copies, presence: true, numericality: {only_integer: true}
    validates_uniqueness_of :isbn
end
