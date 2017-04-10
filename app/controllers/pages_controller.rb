class PagesController < ApplicationController

  def welcome
    render :whelcome
       # use to choose page to show
  end

  def welcome
    @header = "This is the what I am putting in the H1 tag"
  end
end
