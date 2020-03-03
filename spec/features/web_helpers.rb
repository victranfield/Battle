def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Spiderman'
  fill_in :player_2_name, with: 'Batman'
  click_button 'Submit'
end
