class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true
    validates :name, presence: true, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :trackable, :rememberable, :validatable
end
