require 'spec_helper'

describe 'Main page' do
  before do
    @magnet1 = Magnet.create(content: 'foo')
    @magnet2 = Magnet.create(content: 'bar')
  end

  it "should list all magnets" do
    visit '/'
    expect(page).to have_content(@magnet1.content)
    expect(page).to have_content(@magnet2.content)
  end
end
