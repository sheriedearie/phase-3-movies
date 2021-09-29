class Movie < ActiveRecord::Base
    attr_accessor :name
    
    def initialize(name)
        @name = name
        @actor = []
        @role = []
    end
    
    def add_actor(actor) 
        @actor << actor 
        actor.movie = self      
    end 
         
    def actor 
        @actor 
    end 

    def add_role(role) 
        @role << role 
        role.movie = self          
    end 
            
    def role 
        @role 
    end
end 