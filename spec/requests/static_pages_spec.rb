require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    url = '/static_pages/home'
    it "should have the content 'Sample App'" do
      visit url
      expect(page).to have_content('Sample App')
    end

    it 'should have the right title' do
      visit url
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Home')
    end
  end

  describe "Help page" do

    url = '/static_pages/help'
    it "should have the content 'Help'" do
      visit url
      expect(page).to have_content('Help')
    end

    it 'should have the right title' do
      visit url
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Help')
    end
  end

  describe "About page" do

    url = '/static_pages/about'
    it "should have the content 'About Us'" do
      visit url
      expect(page).to have_content('About Us')
    end

    it 'should have the right title' do
      visit url
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | About Us')
    end
  end
end