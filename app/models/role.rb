class Role < ActiveRecord::Base
    attr_accessor :movie, :actor
    
    def initialize(movie, actor)
        @movie = movie
        @actor = actor
    end
end