require File.expand_path(File.dirname(__FILE__) + "/../spec_helper")
require 'sparring_hangman/sparring_hangman'

describe SparringHangman::SparringHangman do
  before :each do
    @player = SparringHangman::SparringHangman.new
  end

  it "is instantiable with no paramters" do

    lambda { SparringHangman::SparringHangman.new }.should_not raise_error

  end

  describe 'when starting a new game' do
    before :each do
      @player.new_game(6)
    end
    
    it 'initializes @left with all the letters in the alphabet' do
      @player.instance_variable_get(:@left).sort.should == ('a'..'z').to_a
    end
    
    it "returns the first letter in the wheel of fortune algo" do
      @player.guess('______', 6).should == 'e'
    end

    it "will return each of the letters of alphabet only once" do
      guesses = []
      26.downto(1) do |i|
        guesses << @player.guess('______', i)
      end
      guesses.sort.should == ('a'..'z').to_a
    end
  end
end
