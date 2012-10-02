require 'spec_helper'

describe "StaticPages" do
	subject {page}
	describe "Home Page" do
		before {visit root_path}
		it {should have_selector('h1', text: 'Welcome to Pollspark!')}
	end
		describe "petition" do
		before {visit petition_path}
		it {should have_selector('h1', text: 'Help eliminate toxins from our houses!')}
	end
		describe "Home Page" do
		before {visit about_path}
		it {should have_selector('h1', text: 'Who is PollSpark?')}
	end
	
	describe "Contact Us" do
		before {visit contact_path}
		it {should have_selector('h1', text: 'Contact Us')}
	end
	
	describe "News" do
		before {visit news_path}
		it {should have_selector('h1', text: 'News')}
	end
end