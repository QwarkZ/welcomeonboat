module ApplicationHelper
  def status(booking)
    if booking == "En attente"
      "blue"
    elsif booking == "Validée"
      "valided"
    else
      "refused"
    end
  end

  def icon(booking)
    if booking == "En attente"
      "⏰"
    elsif booking == "Validée"
      "✅"
    else
      "❌"
    end
  end
  
	def category(boat)
    if boat == "Voilier"
     	"⛵️"
    else
     	"🛥"
    end
	end
end

