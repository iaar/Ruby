require 'spec_helper'
 
describe 'Routing to StaticPagesController' do

  	it 'routes GET /who_we_are to #who_we_are' do
    	{get: '/who-we-are'}.should route_to('static_pages#who_we_are')
 	end
  
end