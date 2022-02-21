class MusicController < ApplicationController
  # #before_action :norogin_user,{only: [:index, :edit, :update, :show, :destory]}　デバイス入れるためにコメントアウト中
  # protect_from_forgery :except => ["create"]
  # def index
  #   @music = Music.all
  # end

  # def edit
  #   @post = Music.find_by(id: params[:id])
  #   @music = @post.user #userメソッド(モデルの中に書いてある)
  # end

  # def new
  #   @post = Music.new
  # end

  # def create
  #   @post = Music.new(
  #     title: params[:title],
  #     release: params[:release],
  #     running_time: params[:running_time],
  #     artist: params[:artist],
  #     user_id: @current_user.id,
  #   )

  #   @post.save

  #   if params[:image]
  #     @post.image = "#{@post.id}.jpg" 
  #     image = params[:image]
  #   File.binwrite("public/music_image/#{@post.image}", image.read)
  #   end

  #   if @post.save
  #     redirect_to("/music")
  #   else
  #     render("music/new")
  #   end
  # end

  # def update
  #   @post = Music.find_by(id: params[:id])

  #   @post.update(
  #     title: params[:title],
  #     release: params[:release],
  #     running_time: params[:running_time],
  #     artist: params[:artist]
  #   )

  #   if params[:image]
  #     @post.image = "#{@post.id}.jpg"
  #     image = params[:image]
  #     File.binwrite("public/music_image/#{@post.image}", image.read)
  #   end

  #   if @post.save
  #     redirect_to("/music")
  #   else
  #     @post.attributes = {
  #       title: params[:title],
  #       release: params[:release],
  #       running_time: params[:running_time],
  #       artist: params[:artist]
  #     }
  #     redirect_to("/music/#{@post.id}")
  #   end
  # end

  # def destroy
  #   @post = Music.find_by(id: params[:id])
  #   @post.destroy
  #   redirect_to("/music")
  # end

  # def noauth_music
  #   @post = Music.find_by(id: params[:id])
  #   if @post.user_id != @current_user.id
  #     redirect_to("/")
  #   end
  # end
  
end
