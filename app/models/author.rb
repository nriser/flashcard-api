class Author < ApplicationRecord
  has_many :words

  validates :word, presence: true
  validates :definition, presence: true
end
