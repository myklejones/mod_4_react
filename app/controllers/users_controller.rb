class UsersController < ApplicationController

    def index

       users = User.all
       render json: users
    end
   
    def show
        user_id = params[:id]
        if user_id_from_token == user_id.to_i
            user = User.find(user_id)
            all_users = User.all
            render json: {user: user, all_users: all_users}
        else 
            render json: {no_permit: true}, status: :unauthorized
        end
    end 

    def create

        user = User.create(user_params)
        if user.valid?
            render json: {ok:true}
        else
            render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
        end

    end

    def update
    end 

    def destroy
    end



    private

    def user_params
        params.permit(:username, :password, :name, :age, :dob, :city_state, :bio, :active)
    end


end
