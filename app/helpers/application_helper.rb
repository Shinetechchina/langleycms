module ApplicationHelper

  def today_helper
    DateTime.parse(Time.now.to_s).strftime('%Y-%m-%d').to_s
  end

  def current_time_helper
    DateTime.parse(Time.now.to_s).strftime('%Y-%m-%d %H:%M:%S').to_s
  end

end
