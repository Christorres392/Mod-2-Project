class UsersController < ApplicationController


    def new
        @user = User.new
    end

    def create
        
        # @user = User.create(user_params)
        
        @user = User.new
        @user.name = user_params[:name]
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
        User.update(user_params)
        redirect_to user_path
    end

    private

    def user_params
            params.require(:user).permit(:name, :birthday, :hometown)
    end


end
