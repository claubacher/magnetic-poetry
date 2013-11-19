require 'spec_helper'

describe Inclusion do
  before { @inclusion = Inclusion.new }

  subject { @inclusion }

  describe "belongs to poem and belongs to magnet" do
    it { should respond_to :poem }
    it { should respond_to :magnet }
  end

  describe "keeps track of position on fridge" do
    it { should respond_to :fridge_top }
    it { should respond_to :fridge_left }
  end
end
