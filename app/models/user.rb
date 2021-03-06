class User < ApplicationRecord
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :boards
  has_many :lists, through: :boards
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
