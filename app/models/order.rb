class Order < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :products
  has_one :address

  validates :products, :length => { :minimum => 1 }
end
