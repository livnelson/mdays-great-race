class JoinUhSerializer < ActiveModel::Serializer
  attributes :id, :user_answer
  has_one :user
  has_one :hunt
end
