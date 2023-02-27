class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :collection, :description, :total, :xsmall, :small, :medium, :large, :xlarge
end
