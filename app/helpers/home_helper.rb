module HomeHelper

	def info_window(status)
		info = content_tag :div, class: 'status_wrapper' do
			tag(:img, src: status.user.profile_image_url) +
			content_tag(:h4, auto_link('@'+status.from_user).html_safe) +
			content_tag(:span, auto_link(status.text).html_safe)
		end
		info.html_safe
	end

	def markers(statuses)
		markers = []
		statuses.each do |s|
			markers << {title: s.from_user, description: info_window(s), lat: s.geo.coordinates.first, lng: s.geo.coordinates.last}
		end
		markers
	end

end
