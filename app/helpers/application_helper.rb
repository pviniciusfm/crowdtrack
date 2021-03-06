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
	def bootstrap_class_for flash_type
		{ success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type] || flash_type.to_s
	end

	def flash_messages(opts = {})
		flash.each do |msg_type, message|
			concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} fade in") do
					 concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
					 concat message
			end)
		end
		nil
	end
end
