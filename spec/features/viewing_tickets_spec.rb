require 'rails_helper'

RSpec.feature 'Users can view tickets' do
  before do
    author = FactoryBot.create(:user)

    sublime = FactoryBot.create(:project, name: 'Sublime Text 3')
    assign_role!(author, :viewer, sublime)
    FactoryBot.create(:ticket, project: sublime,
                               author: author, name: 'Make it shiny!',
                               description: 'Gradients! Starbursts! Oh my!')

    ie = FactoryBot.create(:project, name: 'Internet Explorer')
    assign_role!(author, :viewer, ie)
    FactoryBot.create(:ticket, project: ie, author: author,
                               name: 'Standards Compliance',
                               description: "Isn't a joke.")

    login_as(author)
    visit '/'
  end

  scenario 'for a given project' do
    click_link 'Sublime Text 3'

    expect(page).to have_content 'Make it shiny!'
    expect(page).to_not have_content 'Standards Compliance'

    click_link 'Make it shiny!'
    within('#ticket h2') do
      expect(page).to have_content 'Make it shiny!'
    end

    expect(page).to have_content 'Gradients! Starbursts! Oh my!'
  end
end
