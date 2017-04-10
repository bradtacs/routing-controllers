class PagesController < ApplicationController

  def welcome
    render :whelcome
       # use to choose page to show
  end

  def welcome
    @header = "This is the what I am putting in the H1 tag"
  end
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
end
