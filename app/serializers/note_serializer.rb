class NoteSerializer < ActiveModel::Serializer
  belongs_to :user_id
  attributes :id, :title, :subject, :content, :user_id
end
