class Employee < ApplicationRecord
    validates :first_name, :last_name, presence:true
    validates :email, :password,:confirm_password,:country, presence:true




    def fullname
        "#{first_name} #{last_name}".strip
    end
end
