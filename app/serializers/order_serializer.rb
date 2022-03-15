class OrderSerializer < ActiveModel::Serializer
  attributes :id
  attributes :reference
  attributes :totalValue
  attributes :purchaseChannel
  attributes :clientName
  attributes :adress
  attributes :delivery
  attributes :lineItems
  attributes :status
end
