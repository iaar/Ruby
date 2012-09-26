module StaticPagesHelper
	def generation_link_to_gravatar(email)
			full_email = "#{email}@altoros.com"
			"http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(full_email)}?d=monsterid"
	end

	def generation_name(email)
		name = email.split('.')	
		"#{name[0].capitalize} #{name[1].capitalize}"
	end
end
