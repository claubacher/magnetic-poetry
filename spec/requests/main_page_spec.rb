require 'spec_helper'

describe 'Main page' do
  before(:all) do
    @magnets = []
    @magnets << Magnet.create(content: 'lorem')
    @magnets << Magnet.create(content: 'ipsum')
  end

  after(:all) do
    Magnet.delete_all
  end

  it "should list all magnets" do
    visit root_path
    expect(page).to have_selector(".magnet", text: 'lorem')
    expect(page).to have_selector(".magnet", text: 'ipsum')
  end

  it "should save new poems", :js => true do
    visit root_path
    magnet = page.first(".magnet")
    target = page.find('#fridge')
    magnet.drag_to(target)
    expect {click_button('Save')}.to change {Poem.count}.by(1)
  end
end
