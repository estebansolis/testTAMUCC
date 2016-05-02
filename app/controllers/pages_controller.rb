class PagesController < ApplicationController
  
  def available
    before_action :authenticate_user!
  end

  def checkedout
    before_action :authenticate_user!
  end

  def checkin
    before_action :authenticate_user!
  end

  def checkout
    before_action :authenticate_user!
  end

  def late
    before_action :authenticate_user!
  end

  def manage
    before_action :authenticate_user!
  end

  def signin
    before_action :authenticate_user!
  end
  
  def home
    #before_action :authenticate_user!
  end

  def appointments
    #before_action :authenticate_user!
  end
  
  def auth
    render layout: "login"
    def resource_name
      :user
    end

    def resource
      @resource ||= User.new
    end

    def devise_mapping
      @devise_mapping ||= Devise.mappings[:user]
    end
  end
  
end
