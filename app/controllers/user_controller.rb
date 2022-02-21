class UserController < ApplicationController
  # #before_action :norogin_user,{only: [:index, :edit, :update, :show, :destory]} デバイス入れるためにコメントアウト中
  # #before_action :rogin_user,{only: [:new, :login]} デバイス入れるためにコメントアウト中
  # #before_action :noauth_user,{only: [:edit, :update]} デバイス入れるためにコメントアウト中

  # def index
  #   @users = User.all
  #   @current_user
  #   @user1 = User.find_by(id: 1)
  # end

  # def new
  #   @user = User.new
  # end

  # def edit
  #   @user = User.find_by(id: params[:id])
  # end

  # def create
  #   @user = User.new(
  #     name: params[:name],
  #     email: params[:email],
  #     password: params[:password]
  #   )
  #   @user.save

  #   if params[:image]
  #   @user.image_name = "#{@user.id}.jpg" 
  #   image = params[:image]
  #   File.binwrite("public/user_image/#{@user.image_name}", image.read)
  #   end

  #   if @user.save
  #   flash[:notice] = "新規ユーザーを制作しました"
  #   session[:user_id] = @user.id
  #   redirect_to("/")
  #   else
  #     render("user/new")
  #   end
  # end

  # def update
  #   @user = User.find_by(id: params[:id])

  #   @user.name = params[:name]
  #   @user.email = params[:email]
  #   @user.password = params[:password]

  #   if params[:image]
  #     @user.image_name = "#{@user.id}.jpg"
  #     image = params[:image]
  #     File.binwrite("public/user_image/#{@user.image_name}", image.read)
  #   end

  #   if @user.save
  #     flash[:notice] = "編集しました"
  #     redirect_to("/user/index")
  #   else
  #     render("user/edit")
  #   end
  # end

  # def destroy
  #   @user = User.find_by(id: params[:id])
  #   @user.destroy
  #   redirect_to("/user/index")
  # end

  # def login_form

  # end
  
  # def login
  #   @user = User.find_by(email: params[:email], password: params[:password])

  #   if @user
  #     session[:user_id] = @user.id
  #     redirect_to("/")
  #   else
  #     @email = params[:email]
  #     @password = params[:password]
  #     render("user/login_form")
  #   end
  # end

  # def logout
  #   session[:user_id] = nil
  #   redirect_to("/")
  # end

  # def noauth_user
  #   if @current_user.id != params[:id].to_i
  #     redirect_to("/")
  #   end
  # end
  
end
