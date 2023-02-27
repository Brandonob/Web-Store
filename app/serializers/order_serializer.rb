class OrderSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone_number, :address, :zip_code, :city, :state, :country, :slug
end
