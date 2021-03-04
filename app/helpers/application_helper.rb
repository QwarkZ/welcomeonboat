module ApplicationHelper
	def category(boat)
    if boat == "Voilier"
     	"⛵️"
    else
     	"🛥"
    end
	end
end
