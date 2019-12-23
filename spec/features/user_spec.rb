require 'rails_helper'

RSpec.feature "login", type: :feature do

  let(:user) { create(:user) }

  scenario "A user can login", js: true do
    login_user(user.email, user.password)
  end
end
