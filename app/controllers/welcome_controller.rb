class WelcomeController < ApplicationController
  def index
    @title = "Welcome to Tutorial Report!"
    @search_bar = "This is where you will search for tutorials"
  end
end
