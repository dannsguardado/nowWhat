class Perfil < ApplicationRecord
    belongs_to :user

    validates :nome, presence: true
    # current_user.talks << 
end
