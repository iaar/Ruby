require 'spec_helper'

describe "StaticPages" do


describe "links" do

    it "have link to all page" do
      visit home_path
      click_link 'About'
      current_path.should == '/static_pages/about'
      click_link 'Home'
      current_path.should == '/static_pages/home'
       click_link 'Who We Are'
      current_path.should == '/who-we-are'
    end
    
end

 describe "Home pages" do
  	before(:each) {visit '/static_pages/home'}
   
   it 'have correct title' do
      page.should have_selector('title', text: 'Ruby Gardens :: Home')
   end

   it 'have welcome content' do
       page.should have_content('Welcome to Ruby Gardens Home')
   end

  end

 describe "About pages" do
   before(:each) {visit '/static_pages/about'}

   it 'have correct title' do
   	  page.should have_selector('title', text: 'Ruby Gardens :: About')
   end

    it 'have welcome content' do
      page.should have_content('Welcome to Ruby Gardens About')
   end
 end

 describe "Who we are page" do
 	before(:each) {visit who_we_are_path}

    it "have correct title" do
      page.should have_selector('title', text: 'Ruby Gardens :: Who We Are')
    end
 
    it "have we are content content" do
      page.should have_content('Who We Are')
    end

 end

end
