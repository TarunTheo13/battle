feature 'viewing hit points' do
  scenario 'seeing hit points' do
    sign_in_and_play

    expect(page).to have_content 'Big Sean: 60HP'
  end
end