class WelcomeController < ApplicationController
  def index
    flash[:notice] = "Welcome to Amazing Opportunity!"
  end
end
