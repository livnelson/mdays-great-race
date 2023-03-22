class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :on_hunt_number, :image, :password_digest, :ttc, :start_time
end
