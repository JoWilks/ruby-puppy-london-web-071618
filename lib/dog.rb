require 'pry'

class Dog

attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    self.new
    # self.new
  end

  def self.clear_all
    @@all = []
  end

  def self.all
    @@all.each {|dog| puts "#{dog.instance_variable_get(:@name)}" }
  end

  def new
    @@all << self
  end

end
