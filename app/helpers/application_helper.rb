module ApplicationHelper

	def time_ago time
		"#{time_ago_in_words(time) } ago"
	end

	def status_converter status, truthy: "yes", falsy: "no"
		if status 
			truthy
		else
			falsy
		end
	end

end
