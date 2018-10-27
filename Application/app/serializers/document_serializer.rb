class DocumentSerializer < ActiveModel::Serializer
  attributes :id,:name, :type_file,:extension,:path
end
