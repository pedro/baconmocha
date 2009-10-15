require "#{File.dirname(__FILE__)}/../lib/baconmocha"

describe 'Bacon and Mocha used to suck together' do
  it "should not raise empty specification when you use Mocha, not Bacon, to assert something" do
    str = 'a'
    str.expects(:size)
    str.size
  end 
end