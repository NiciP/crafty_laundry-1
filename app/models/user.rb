class User < ApplicationRecord
  acts_as_booker
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_presence_of :email, :password
end