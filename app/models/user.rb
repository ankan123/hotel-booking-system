class User < ApplicationRecord

 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
   devise :database_authenticatable, :registerable, :recoverable,
         :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: %i[facebook]
 
  validates :number, :presence => true, :numericality => true, :length => { :minimum => 10, :maximum => 15 }
  validates :username, :presence => true, :length => { :minimum => 5 }
  
         def self.from_omniauth(auth)
          name_split = auth.info.name.split(" ")
          user = User.where(email: auth.info.email).first
          user ||= User.create!(provider: auth.provider, uid: auth.uid, email: auth.info.email, password: Devise.friendly_token[0, 20])
            user
        end    
         
end
