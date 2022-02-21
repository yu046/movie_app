class ApplicationController < ActionController::Base
    #before_action :set_current_user, :set_search
    before_action :set_search
    #下のやつはdevise用の
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?

    # def set_current_user
    #     @current_user = User.find_by(id: session[:user_id])
    # end

    # def norogin_user
    #     if @current_user == nil
    #     redirect_to("/login")
    #     end
    # end

    # def rogin_user
    #     if @current_user
    #         redirect_to("/")
    #     end
    # end

    #after_sign_in_path_for メソッドを追加します。ここにログイン後に遷移したいページを指定します。
    def after_sign_in_path_for(resource)
        pages_show_path
    end
    
    def set_search
        @movie_search = Movie.ransack(params[:q])
        @music_search = Music.ransack(params[:q])
        @search_movie_articles = @movie_search.result.page(params[:page])
        @search_music_articles = @music_search.result.page(params[:page])
        
        @search_name = @movie_search.title_cont
        @search_count = 1
    end

    #あと sign_in_required も追加します。showページはログインしているユーザーだけにアクセスさせ、ログインしてない場合はログインページに遷移させます。
    private
        def sign_in_required
            redirect_to new_user_session_url unless user_signed_in?
        end

    protected
    def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
            devise_parameter_sanitizer.permit(:account_update, keys: [:username])
    end
end
