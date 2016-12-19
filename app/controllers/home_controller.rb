class HomeController < ApplicationController
  # This is where you could load a users trips/monuments when they log in
  # if user_signed_in?
    # get their id with the current_user method
    # Then do @monuments/@trips = Trips.where (user.id = id etc etc)

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end


  # def show
  #     home = params['home']
  #     monument = home['monument_name']
  #     @url = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=monuments+in+"+monument+"&key=AIzaSyAtothoHxQt87NlqSMvHwP6Q6MJ28vP0Y4"
  #     @response = HTTParty.get(@url)
  #     @response['results'].each do |res|
  #       puts res['formatted_address']
  #     end
  #   end

  # def create
  #   User.create(email: params[:Email])
  # end


  # def update
  #     User.find_by(id: params[:id]).update(user_params)
  # end

  # def user_params
  #   params.require(:user).permit(:email)
  # end

  # def edit
  #   @user = User.find_by(id: params[:id])
  # end
end
