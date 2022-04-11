class User < ApplicationRecord
    EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
    
    # Lembre-se de tirar as validações de senha!
    # O has_secure_password já o faz para você.
    validates_presence_of :email, :full_name, :location
    validates_length_of :bio, minimum: 30, allow_blank: false
    
    validates_format_of :email, with: EMAIL_REGEXP
    has_secure_password

end

