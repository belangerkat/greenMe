class User < ApplicationRecord
    has_secure_password
    has_many :user_challenges

    validates :name, :email, :password, presence: true

    validates_confirmation_of :password  
    validates_presence_of :email, :on => :create    
    validates :password, length: { in: 6..30 }, :on => :create 
    
    validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
    validates_uniqueness_of :email
    
end
