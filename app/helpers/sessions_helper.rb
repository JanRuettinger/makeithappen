module SessionsHelper


  def log_in(charityorg)
    session[:charityorg_id] = charityorg.id
  end

  def log_out
    session.delete(:charityorg_id)
    @current_charityorg = nil
  end

end
