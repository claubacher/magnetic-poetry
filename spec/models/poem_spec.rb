require 'spec_helper'

describe Poem do
  before { @poem = Poem.new }

  subject { @poem }

  describe "has many magnets, through inclusions" do
    it { should respond_to :inclusions }
    it { should respond_to :magnets }
  end
end
