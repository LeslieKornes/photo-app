class User < ApplicationRecord

  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

   has_one :payment
   
   accepts_nested_attributes_for :payment

end
