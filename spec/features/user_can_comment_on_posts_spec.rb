require 'rails_helper'

RSpec.feature "Comment", type: :feature do
  scenario "Can comment on posts" do
    sign_up
    create_a_post("Hello, world!")
    expect(page).to have_content("Add a comment:")
    fill_in "Commenter",with: "Daniel"
    fill_in "Body", with: "This is a comment"
    click_button "Create Comment"
    expect(page).to have_content("This is a comment")
  end
end
