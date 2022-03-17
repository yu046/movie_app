class HomeController < ApplicationController
  before_action :search,{only: [:index]}
  # #before_action :norogin_user,{only: [:top]}　デバイス入れるためにコメントアウト中

  def top
    @movie = Movie.all
    @movie_rank = Movie.first(3)
    @today_movie = Movie.offset( rand(Movie.count) ).first
  end

  def search
  end
  
end
