class Order < ApplicationRecord
    validates :reference, presence: true
    validates :purchaseChannel, presence:true
    validates :clientName, presence:true
    validates :adress, presence:true
    validates :delivery, presence:true
    validates :totalValue, presence:true
    validates :lineItems, presence:true
    validates :status, presence:true
end
