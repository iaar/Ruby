require 'spec_helper'
describe 'Helpers' do
  describe "helper_static_pages" do
    it "gravatar" do
      expect(helper.generation_link_to_gravatar('alexander.koshelapov')).to match /http:\/\/www.gravatar.com\/avatar\/[a-z0-9]+\?d=monsterid/
    end

    it "gravatar" do
      expect(helper.generation_name('alexander.koshelapov')).to match /[A-Z][a-z]+\s[A-Z][a-z]+/
    end
  end

  describe "helper_application" do
    it "gravatar" do
      expect(helper.gen_links).to have_selector('a', href: home_path)
    end
  end

end