require 'spec_helper'

describe "UserPages" do

  let(:title) { "Ruby on Rails Tutorial Sample App" }

  subject { page }

  describe "signup page"
  before { visit signup_path}

  it { should have_selector('h1', :text => 'Sign up')}
  it { should have_selector('title', :text => "#{title} | Sign up") }

end
