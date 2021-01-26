class NoteSerializer < ActiveModel::Serializer
  belongs_to :user_id
  attributes :id, :title, :category, :content, :user_id
end
