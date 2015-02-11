class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body
  has_one :post, except: [:user, :comments]
  has_one :user, except: [:posts, :comments]
end
