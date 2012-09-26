class StaticPagesController < ApplicationController
	def who_we_are
		@persons = Person.all
	end
end
