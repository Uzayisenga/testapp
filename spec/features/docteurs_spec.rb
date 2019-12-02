require 'rails_helper'
RSpec.feature "Docteur management function", type: :feature do
    
  background do
    User.create!( email: 'amina1@gmail.Com',  password: '123456', password_confirmation:'123456')
    visit new_user_session_path
    fill_in 'Email', with: 'amina1@gmail.com'
    fill_in 'Password', with: '123456'
    click_on 'Log in'
    
    Docteur.create()
    
  end
  scenario "Test docteur list" do
    
    visit docteurs_path
  
  end

  scenario "Test docteur creation" do
    Docteur.create()
  end

  scenario "Test docteur details" do
    Docteur.first
   
  end

  scenario "Test docteur updating" do
    visit docteurs_path

    Docteur.create()
    
    docteur= Docteur.create()
    docteur.save
   # save_and_open_page
   
  end
  scenario 'Test Docteur Deletion' do
    Docteur.create()
   
    visit docteurs_path
    
  end
  scenario 'Test Docteur validation' do
   Docteur.create()
    visit docteurs_path
    
      
      
  end
  
  

end