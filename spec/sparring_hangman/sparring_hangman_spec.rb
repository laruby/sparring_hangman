require File.expand_path(File.dirname(__FILE__) + "/../spec_helper")
require 'sparring_hangman/sparring_hangman'

describe SparringHangman::SparringHangman do

  it "should be instantiable with no paramters" do

    lambda { SparringHangman::SparringHangman.new }.should_not raise_error

  end

end