class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable :timeoutable, and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable
         ROLES=%w{admin}

         def admin?
          role=='admin'
         end
         
end
