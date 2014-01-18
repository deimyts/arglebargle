module ApplicationHelper

	#returning the page title based on page
	def full_title(page_title)
		base_title = "Codename Carnegie"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
