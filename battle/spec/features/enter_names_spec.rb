feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Tarun'
    fill_in :player_2_name, with: 'Big Sean'
    click_button 'Submit'

    save_and_open_page

    expect(page).to have_content 'Tarun vs. Big Sean'
  end
end