class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :usern, :password, :level, :reputation, :role, :number_of_followers, :photo 

end
