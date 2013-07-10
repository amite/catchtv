class User
  include ActiveModel::SecurePassword
  include Mongoid::Document
 
  field :email, type: String
  field :password_digest, type: String
  
  has_secure_password
  
  validates :email, presence: true, uniqueness: { case_sensitive: false },
            format: { with: /\A([-_.+\w]+)@([-\w]+\.)+[a-z]{2,4}\z/i }
  validates :password, presence: true, length: { minimum: 3 }
end
