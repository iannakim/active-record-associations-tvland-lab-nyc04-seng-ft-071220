class Actor < ActiveRecord::Base
  
    has_many :characters
    has_many :shows, through: :characters

    # def full_name
    #     self.pluck(:first_name, :last_name)
    # end

    def full_name    
        "#{self.first_name} #{self.last_name}"
    end


    def list_roles
    #    character = self.characters.select {|character| character.actor == self}
        # character.collect {|c| "#{c.actor} - #{c.show}"}
        self.characters.map {|character| "#{character.name} - #{character.show.name}"}.join

    end



end