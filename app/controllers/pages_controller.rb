class PagesController < ApplicationController

  def home
  end

  def sunset
  end

  def sunrise
  end

  def booking
    # I retrieve the information the user types in the form,
    # and save it to each corresponding variable
    @capacity = params[:capacity]
  end

end

# Pages controller has a method home which renders the home view (as defined on the routing,
# root points to home)
# and the subsequent methods for each different endpoint which the user interacts with
