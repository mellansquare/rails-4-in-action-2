require "rails_helper"

RSpec.feature "Admins can manage states" do
  let!(:state) { FactoryBot.create :state, name: "New" }
  
  before do
    login_as(FactoryBot.create(:user, :admin))
    visit admin_states_path
  end
  
  scenario "and mark state as default" do
    within list_item("New") do
      click_link "Make Default"
    end
    
    expect(page).to have_content "'New' is now the default state."
  end
end