class MonumentsController < ApplicationController


  def index
    @monuments = Monument.all
  end

  def show
    @monument = Monument.find_by(id: params[:id])
  end




def create
    Monument.create(name: params[:Name],
                  )
    redirect_to "/home"
  end

end
