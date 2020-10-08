class SignupsController < ApplicationController
  protect_from_forgery

    def new
        @signup = Signup.new
    end

    def create
      @signup = Signup.new(signup_params)

      if @signup.save
        redirect_to "/thanks"
      end
    end
     
    private
    def signup_params
      params.require(:signup).permit(:email, :firstname)
    end
end
