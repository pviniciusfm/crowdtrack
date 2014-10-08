module ApplicationHelper
	def render_main_menu?(option)
		option
	end
	# def title(page_title)
 #  		content_for :title, page_title.to_s
	# end
	def body_append(body_class)
		content_for :body_append, body_class.to_s
	end
end
