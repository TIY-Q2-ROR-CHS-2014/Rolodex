class HomeController < ApplicationController
  def index
    @rolodexes = Rolodex.all
  end
end
