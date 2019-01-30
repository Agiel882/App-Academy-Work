require 'bcrypt'
class User < ApplicationRecord
    attr_reader :password
    before_validation :ensure_session_token
    validates :username, :session_token, presence: true
    validates :username, uniqueness: true
    validates :password_digest, presence: true, message: "Password can't be blank"
    validates :password, length {minimum: 6, allow_nil = true}

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        pass_hash = BCrypt::Password.create(password)
        if user.password_digest == pass_hash
           return user 
        else
            return nil
        end
    end

    def self.generate_session_token
        SecureRandom::urlsafe_base64
    end

    def reset_session_token!
        @session_token = User.generate_session_token
    end

    def ensure_session_token
        @session_token = generate_session_token unless @sesion_token
    end

    def password=(pass)
        @password = pass
        @password_digest = BCrypt::Password.create(password)
    end
end
