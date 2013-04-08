require 'spec_helper'

describe "StaticPages" do

  let(:title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector('title', :text => "#{title} | About Us")
    click_link "Help"
    page.should have_selector('title', :text => "#{title} | Help")
    click_link "Contact"
    page.should have_selector('title', :text => "#{title} | Contact Us")
    #click_link "Home"
    #click_link "Sign up now!"
    #page.should have_selector('title', :text => "#{title} | Sign up")
    click_link "sample app"
    page.should have_selector('title', :text => "#{title} | Home")
  end

  shared_examples_for "all static pages" do
    it { should have_selector('h1',    text: heading) }
  end
  
  describe "Home Page" do

    before { visit root_path }
    let(:heading)    { 'Sample App' }

    it { should have_selector('title', :text => "#{title} | Home") }
  end

  describe "Help Page" do
    before { visit help_path }
    let(:heading)    { 'Sample App' }
    it { should have_selector('title', :text => "#{title} | Help") }
  end

  describe "About Page" do
    before { visit about_path }
    let(:heading)    { 'Sample App' }
    it { should have_selector('title', :text => "#{title} | About Us") }
  end

  describe "Contact Page" do
    before { visit contact_path }
    let(:heading)    { 'Sample App' }
    it { should have_selector('title', :text => "#{title} | Contact Us") }
  end
end
