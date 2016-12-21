class HomeController < ApplicationController
  # This is where you could load a users trips/monuments when they log in
  # if user_signed_in?
    # get their id with the current_user method
    # Then do @monuments/@trips = Trips.where (user.id = id etc etc)
    def index
      @monuments = Monument.all
    end

<<<<<<< HEAD
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end


    def create
      home = params['home']
      city = home['city']
      @url = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=monuments+in+"+city+"&key=AIzaSyAaTxKO83nQMSzEMq5T-WqU9thoXryHcaM"
      @response = HTTParty.get(@url)
      mon_name = home['monu']
      address = home['address']
      pic = home['pic']
      puts mon_name
      puts address
      puts pic
      render 'new'
    end

    def new
      @response
    end

  def destroy
    User.destroy(params[:id])
    redirect_to "/home"
  end


  def update
      User.find_by(id: params[:id]).update(user_params)
      # redirect_to "/home/"+params[:id]
  end

  def user_params
    params.require(:user).permit(:email)
  end

  def edit
    @user = User.find_by(id: params[:id])
  end


=======
    def show
      @monument = Monument.find(params[:id])
    end

    def create
      home = params['home']
      @city = home['city']
      if @city != nil
        @url = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=monuments+in+"+@city+"&key=AIzaSyBSwXn_BJe18ejLsao-5RYPgkhVGKXuZAQ"
        @response = HTTParty.get(@url)
        @store_city = @city
      else
        mon_name = home['name']
        address = home['address']
        pic = home['pic']
        city = home['cityName']
        mon_name = mon_name.to_s
        address = address.to_s
        pic = pic.to_s
        city = city.to_s
        m = Monument.new
        t = Trip.new
        m.monument_name = mon_name
        m.address = address
        m.image = pic
        m.comment = ""
        u = User.find(current_user.id)
        m.user = u
        t.city_name = city
        t.user = u
        t.save
        m.trip = t
        m.save
      end
      render 'new'
    end

    def new
      @response
    end

    def update

    end

    def destroy
      Monument.destroy(params['id'])
      redirect_to(:back)
    end
>>>>>>> 89e8eb47481fc9d76c82d24ad6297e88ef1e9499
end

