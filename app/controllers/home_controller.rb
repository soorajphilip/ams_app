class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
  end

  def about
  end

  def pricing
  end

  def clients
  end
end
