class StaticPagesController < ApplicationController
	def who_we_are
		@emails = %w(sergey.berdnikovich
					 anastasia.charushina
					 anton.dziga
					 konstantin.ilchenko
					 alexander.karmes
					 stanislav.knyazev
					 alexander.koshelapov
					 yulia.oletskaya
					 konstantin.savon
					 anastasia.shaternik
					 sergey.starikov
					 viktor.voinilovich)
	end
end
