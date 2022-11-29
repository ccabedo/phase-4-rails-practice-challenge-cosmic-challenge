class Planet < ApplicationRecord
    has_many :missions
    has_many :scientists, through: :missions

    def index
        render json: Planet.all, status: :ok
    end
    
end
