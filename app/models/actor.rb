class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    #can list its full name
    def full_name 
        "#{self.first_name} #{self.last_name}"
    end 

    # can list all of its shows and characters
    def list_roles
        self.characters.map do |character|
            "#{character.name} - #{character.show.name}"
        end 
    end 
end