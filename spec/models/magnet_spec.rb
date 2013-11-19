require 'spec_helper'

describe Magnet do
  before { @magnet = Magnet.new }

  subject { @magnet }

  describe "has many poems through inclusions" do
    it { should respond_to :inclusions }
    it { should respond_to :poems }
  end
end
