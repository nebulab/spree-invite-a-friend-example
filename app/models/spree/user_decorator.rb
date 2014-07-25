Spree::User.class_eval do
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
         :trackable, :validatable, :encryptable, :invitable,
         encryptor: 'authlogic_sha512'
end
