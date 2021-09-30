# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end
RSpec.describe 'Creating an author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Author', with: 'peter pan'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('peter pan')
  end
end

RSpec.describe 'Creating a price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Price', with: '10'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('10')
  end
end

RSpec.describe 'Creating a date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Date', with: '10/10/10'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('10/10/10')
  end
end
