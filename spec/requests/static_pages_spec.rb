require 'spec_helper'

describe 'Static pages' do

  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }

  describe 'Home page' do

    url = '/static_pages/home'
    it 'should have the right content' do
      visit url
      expect(page).to have_content('Sample App')
    end

    it 'should have the base title' do
      visit url
      expect(page).to have_title("#{ base_title }")
    end

    it 'should not have a custom title' do
      visit url
      expect(page).not_to have_title("#{ base_title } | Home")
    end
  end

  describe 'Help page' do

    url = '/static_pages/help'
    it 'should have the right content' do
      visit url
      expect(page).to have_content('Help')
    end

    it 'should have the right title' do
      visit url
      expect(page).to have_title("#{ base_title } | Help")
    end
  end

  describe 'About page' do

    url = '/static_pages/about'
    it 'should have the right content' do
      visit url
      expect(page).to have_content('About Us')
    end

    it 'should have the right title' do
      visit url
      expect(page).to have_title("#{ base_title } | About Us")
    end
  end

  describe 'Contact page' do

    url = '/static_pages/contact'
    it 'should have the right content' do
      visit url
      expect(page).to have_content('Contact')
    end

    it 'should have the right title' do
      visit url
      expect(page).to have_title("#{ base_title } | Contact")
    end
  end

end