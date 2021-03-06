class CoffeeOrder < ApplicationRecord
    belongs_to :user
    validates :title, presence: true
    

    def user_attributes=(user_attributes)
        if user_attributes.values.present?
            
            self.user = User.find_or_create_by(user_attributes)
        end 
    end 
end
