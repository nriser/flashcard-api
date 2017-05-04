class WordSerializer < ActiveModel::Serializer
  attributes :id, :word, :definition, :author_id
end
