class PagesController < ApplicationController
  before_action :authenticate_user!
  
  def home
  end

  def appointments
  end

  def available
  end

  def checkedout
  end

  def checkin
  end

  def checkout
  end

  def late
  end

  def manage
  end

  def signin
  end
end
