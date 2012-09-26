require 'spec_helper'

describe "StaticPages" do

 describe "Home pages" do
  	before(:each) {visit '/static_pages/home'}
   
   it 'should have correct title' do
      page.should have_selector('title', text: 'Ruby Gardens :: Home')
   end

   it 'should have welcome content' do
       page.should have_content('Welcome to Ruby Gardens Home')
   end

    it "should have link to about page" do
      click_link 'About'
      current_path.should == '/static_pages/about'
    end
 end

 describe "About pages" do
   before(:each) {visit '/static_pages/about'}

   it 'should have correct title' do
   	  page.should have_selector('title', text: 'Ruby Gardens :: About')
   end

   it "should have link to home page" do
      click_link 'Home'
      current_path.should == '/static_pages/home'
   end

   it 'should have welcome content' do
      page.should have_content('Welcome to Ruby Gardens About')
   end
 end

 describe "Who we are page" do
    it "should have correct title" do
      visit who_we_are_path
      page.should have_selector('title', text: 'Ruby Gardens :: Who We Are')
    end
 
    it "should have about content" do
      visit who_we_are_path
      page.should have_content('Who We Are')
    end
  end

end
