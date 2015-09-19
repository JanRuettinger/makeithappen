module SessionsHelper


  def log_in(charityorg)
    session[:charityorg_id] = charityorg.id
  end

  def log_out
    session.delete(:charityorg_id)
    @current_charityorg = nil
  end

  def current_charity
    @current_charity ||= CharityOrg.find_by(id: session[:charityorg_id])
  end

end
