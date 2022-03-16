class Batch < ApplicationRecord
    validates :reference, presence: true
    validates :purchaseChannel, presence:true
end
