class Actor < ActiveRecord::Base
    attr_accessor :name
    
    def initialize(name)
        @name = name
        @role = []
        @movie = []
    end

    def add_role(role) 
        @role << role 
        role.actor = self      
    end 
         
    def role 
        @role 
    end 

    def add_movie(movie) 
        @movie << movie 
        movie.actor = self      
    end 
         
    def movie 
        @movie 
    end 
end