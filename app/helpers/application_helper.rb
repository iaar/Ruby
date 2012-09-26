module ApplicationHelper
	def gen_links
		content_tag(:ul) do
			[content_tag(:li, (link_to('Home', home_path))),
			content_tag(:li, (link_to('About', about_path))),
			content_tag(:li, (link_to('Who We Are', who_we_are_path)))].join.html_safe
		end
	end
end
