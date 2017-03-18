class User < ApplicationRecord
  has_many :patients
  has_many :appointments, through: :patients

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def display_name
      first_name.present? ? "#{first_name} #{last_name}" : email
   end
end
