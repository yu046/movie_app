class PostController < ApplicationController
  # #before_action :noauth_movie,{only: [:edit, :update, :destory]} デバイス入れるためにコメントアウト中
  # #before_action :norogin_user,{only: [:index, :edit, :update, :show, :destory]}　デバイス入れるためにコメントアウト中

  def index
    @post = Movie.all
  end

  def edit
    @post = Movie.find_by(id: params[:id])
    @user = @post.user #userメソッド(モデルの中に書いてある)
  end

  def new
    @post = Movie.new
  end

  def create
    @post = Movie.new(
      title: params[:title],
      release: params[:release],
      running_time: params[:running_time],
      synopsis: params[:synopsis],
      contry: params[:contry]
      #user_id: @current_user.id,
    )

    @post.save

    if params[:image]
      @post.image = "#{@post.id}.jpg" 
      image = params[:image]
    File.binwrite("public/movie_image/#{@post.image}", image.read)
    end

    if @post.save
      redirect_to("/post")
    else
      render("post/new")
    end
  end

  def update
    @post = Movie.find_by(id: params[:id])
    @post.update(
    title: params[:title],
    release: params[:release],
    running_time: params[:running_time],
      synopsis: params[:synopsis]
    )

    if params[:image]
      @post.image = "#{@post.id}.jpg"
      image = params[:image]
      File.binwrite("public/movie_image/#{@post.image}", image.read)
    end

    if @post.save
      redirect_to("/post")
    else
      @post.attributes = {
        title: params[:title],
        release: params[:release],
        running_time: params[:run_time],
        synopsis: params[:syn]
      }
        redirect_to("/post/#{@post.id}")
    end
  end

  def destroy
    @post = Movie.find_by(id: params[:id])
    @post.destroy
    redirect_to("/post")
  end

  def noauth_movie
    @post = Movie.find_by(id: params[:id])
    if @post.user_id != @current_user.id
      redirect_to("/")
    end
  end
  
end
