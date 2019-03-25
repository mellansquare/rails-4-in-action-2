require 'rails_helper'

RSpec.feature 'Users can delete unwanted tags from a ticket' do
  let(:user) { FactoryBot.create(:user) }
  let(:project) { FactoryBot.create(:project) }
  let(:ticket) do
    FactoryBot.create(:ticket, project: project, tag_names: '#ThisTagMustDie', author: user)
  end

  before do
    assign_role!(user, :manager, project)
    login_as(user)
  end

  scenario 'successfully', js: true do
    visit project_ticket_path(project, ticket)
    within tag('#ThisTagMustDie') do
      click_link 'remove'
    end
    expect(page).to_not have_content 'ThisTagMustDie'
  end
end