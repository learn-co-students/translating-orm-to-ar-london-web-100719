require 'pry'

class Dog < ActiveRecord::Base

    attr_accessor :name, :breed, :id

    def initialize(attributes)

        attributes.each {|key, value| self.send("#{key}=", value)}
        
    end

    def self.create(attributes)
    binding.pry
        Dog.new(attributes)
        
    end
    
end