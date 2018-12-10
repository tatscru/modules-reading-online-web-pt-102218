require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer 
  # extend MetaDancing 
  # include Dance 
  
  # nested module version
  extend FancyDance::ClassMethods 
  #extend = shareable info
  include FancyDance::InstanceMethods
  #include = lended methods 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
  end 
end 