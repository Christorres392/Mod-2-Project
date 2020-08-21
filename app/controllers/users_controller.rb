class UsersController < ApplicationController


    def new
        @user = User.new
    end

    def create
        
        # @user = User.create(user_params)
        
        @user = User.new
        @user.name = user_params[:name]
        @user.username = user_params[:username]
        @user.hometown = Destination.find_or_create_by(location: user_params[:hometown])
        @user.birthday = Date.new(user_params['birthday(1i)'].to_i, user_params['birthday(2i)'].to_i, user_params['birthday(3i)'].to_i)
        @user.save
       
        redirect_to user_path(@user)

    end
    
    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.name = user_params[:name]
        @user.username = user_params[:username]
        @user.hometown = Destination.find_or_create_by(location: user_params[:hometown])
        @user.birthday = Date.new(user_params['birthday(1i)'].to_i, user_params['birthday(2i)'].to_i, user_params['birthday(3i)'].to_i)
        
       
        redirect_to user_path(@user)
    end

    private

    def user_params
            params.require(:user).permit(:name, :username, :birthday, :hometown)
    end


end
