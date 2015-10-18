class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :time_ago_in_words
  def time_ago_in_words( new_time )
    time_difference = Time.now - new_time
    if (time_difference/1.day).to_i > 0
      return (time_difference/1.day).to_i.to_s + " days ago"
    elsif (time_difference/1.hour).to_i > 0
      return (time_difference/1.hour).to_i.to_s + " hours ago"
    elsif (time_difference/1.minute).to_i > 0
      return (time_difference/1.minute).to_i.to_s + " minutes ago"
    else
      return (time_difference/1.second).to_i.to_s + " seconds ago"
    end
  end
  
  helper_method :parse_domain_from_link
  def parse_domain_from_link( url )
    url.split('/')[2]
  end
  
  
end
