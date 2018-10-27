class UserSerializer < ActiveModel::Serializer
    attributes :id,:name,:email,:usern, :level, :reputation, :role, :number_of_followers

end
