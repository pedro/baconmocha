require 'bacon'
require 'mocha_standalone'

class Mocha::Expectation
  alias :initialize_without_bacon :initialize
  def initialize(*args)
    Bacon::Counter[:requirements] += 1
    initialize_without_bacon(*args)
  end
end
  
class Bacon::Context
  include Mocha::API

  def initialize(name, &block)
    @name = name
    @before, @after = [
      [lambda { mocha_setup }],
      [lambda { mocha_verify ; mocha_teardown }]
    ]
    @block = block
  end

  def xit(desc, &bk)
  end
end