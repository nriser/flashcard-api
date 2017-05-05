# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :flashcards

  validates :word, presence: true
  validates :definition, presence: true
end
