class ShowsController <ApplicationController

  before_action :authenticate_user!

  def show_params
    return params.require(:show).permit(:title, :series, :description, :image, :programmeID)
  end

  # def index
  #   shows = Show.all()
  #   render ({ json: shows })
  # end

  def index
    shows = FavouriteShow.all()
   render :json => shows.as_json(
       {
         include:[
           {user: {only: :name}}, show: {only: [:title, :description, :series]}]
         })
  end

  # def show
  #   show = Show.find(params[:id])
  #   render :json => show.as_json(
  #   {
  #     include:[
  #       {favourite_shows: {only: :title}}]
  #     })

  # end

  def create
    show = Show.create(show_params())
    render = ({ json: show })
  end

end