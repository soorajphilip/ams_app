module ApplicationHelper

  def greeting_time
    current_time = Time.now.to_i
    midnight = Time.now.beginning_of_day.to_i
    noon = Time.now.middle_of_day.to_i
    five_pm = Time.now.change(:hour => 17 ).to_i

    case
     when midnight.upto(noon).include?(current_time)
      "Good Morning"
     when noon.upto(five_pm).include?(current_time)
       "Good Afternoon"
     when five_pm.upto(midnight + 1.day).include?(current_time)
      "Good Evening"
    end
  end
end
