require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'

class Kid 
  # extend MetaDancing
  # include Dance 
  #above used as instance methods
  
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods
  
  # :: = parent/child relationship within nested modules 
  # include = add functionality to classes via instances + call instance methods on instances of our classes
  #extend = adds functionality to our classes via class methods
  
  attr_accessor :name
  
  def initialize(name)
    @name = name 
  end 
end 