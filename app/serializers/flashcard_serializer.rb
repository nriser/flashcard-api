class FlashcardSerializer < ActiveModel::Serializer
  attributes :id, :word, :definition
end
