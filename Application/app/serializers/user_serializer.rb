class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :usern, :password, :level, :reputation, :role, :number_of_followers, :photo  
end
