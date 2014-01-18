require 'spec_helper'

describe "StaticPages" do

	subject { page }

	shared_examples_for "all static pages" do
		it { should have_selector('h1', text: heading) }
		it { should have_title(full_title(page_title)) }
	end

  	describe "Home page" do 
  		before { visit '/static_pages/home' }
  		let(:heading) { 'Carnegie'}
  		let(:page_title) { '' }

	 	it_should_behave_like "all static pages"
	 	it { should_not have_title(' | Home') }
	 end

  	describe "About page:" do
  		before { visit '/static_pages/about' }
  		let(:heading) { 'About'}
  		let(:page_title) { 'About Us' }

	  	it_should_behave_like "all static pages"
	end
end

