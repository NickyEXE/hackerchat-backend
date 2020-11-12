class ChannelShowSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :messages, include: [:content]
end
