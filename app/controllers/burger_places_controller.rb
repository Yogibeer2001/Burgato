class BurgerPlacesController < ApplicationController
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :set_burger_place, only: [:show, :update, :destroy]
  before_action :authenticate

  # GET /burger_places
  # GET /burger_places.json
  def index
    @burger_places = BurgerPlace.all

    render json: @burger_places
  end

  # GET /burger_places/1
  # GET /burger_places/1.json
  def show
    render json: @burger_place
  end
  # POST /burger_places
  # POST /burger_places.json
  def create
    @burger_place = BurgerPlace.new(JSON.parse())
    if @burger_place.save
      render json: @burger_place, status: :created, location: @burger_place
    else
      render json: @burger_place.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /burger_places/1
  # PATCH/PUT /burger_places/1.json
  def update
    @burger_place = BurgerPlace.find(params[:id])

    if @burger_place.update(burger_place_params)
      head :no_content
    else
      render json: @burger_place.errors, status: :unprocessable_entity
    end
  end

  # DELETE /burger_places/1
  # DELETE /burger_places/1.json
  def destroy
    @burger_place.destroy

    head :no_content
  end

  private

    def set_burger_place
      @burger_place = BurgerPlace.find(params[:id])
    end

    def burger_place_params
      params.require(:burger_place).permit(:name, :address, :phone_no, :review_score, :post_code, :suburb, :city, :web_address)
    end

    protected

  def authenticate
    authenticate_token || render_unauthorized
  end

  def authenticate_token
    authenticate_with_http_token do |token, options|
      User.find_by(auth_token: token)
    end
  end

  def render_unauthorized
    self.headers['WWW-Authenticate'] = 'Token realm="Application"'
    render json: 'Bad credentials', status: 401
  end

end
