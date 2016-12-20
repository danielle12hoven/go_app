class HomeController < ApplicationController

  def index
    @monuments = Monument.all
  end

  def show
<<<<<<< HEAD
    @monument = User.find_by(id: params[:id])
=======
    @monument = Monument.find(params[:id])
>>>>>>> 37d6659479d2dcab4aea7fa2430354118a18da10
  end

  def create
    home = params['home']
    city = home['city']
    @url = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=monuments+in+"+city+"&key=AIzaSyAaTxKO83nQMSzEMq5T-WqU9thoXryHcaM"
    @response = HTTParty.get(@url)
    # mon_name = params[:mon][:monu]
    # address = params[:mon][:address]
    # pic = params[:mon][:pic]
    # puts mon_name, address, pic
    render 'new'
  end
  def new
    @response
  end
  def update

<<<<<<< HEAD
  def create
    User.create(name: params[:email],
                  id: params[:id]
                  )
        # redirect_to "/home"
  end


  def delete
    User.delete(params[:id])
  end


  # def update
  #     User.find_by(id: params[:id]).update(user_params)
  #     # redirect_to "/home/"
  # end

  # def user_params
  #   params.require(:user).permit(:id)
  # end

  def edit
    @user = User.find_by(id: params[:id])
=======
>>>>>>> 37d6659479d2dcab4aea7fa2430354118a18da10
  end

  def destroy

  end

