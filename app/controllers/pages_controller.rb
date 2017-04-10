class PagesController < ApplicationController

  def welcome
    render :welcome
       # use to choose page to show
  end

  #def welcome
  #  @header = "This is the what I am putting in the H1 tag"
  #end
  def contest
    redirect_to "/welcome"
  end

  def kitten
    set_kitten_url
  end

  def kittens
    set_kitten_url
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
    if params[:magic_word] == "test"
      flash[:notice] = "Sorry, you're not authorized to see that page!"
      redirect_to "/welcome"
  end
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to "/welcome"
  end
end
