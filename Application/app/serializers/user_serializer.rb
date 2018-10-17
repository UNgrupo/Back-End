class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :usern, :level, :reputation, :role, :number_of_followers, :photo  
end
