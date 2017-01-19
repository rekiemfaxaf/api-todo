class Api::V1::ToDosController < ApplicationController
  before_action :set_user
  before_action :set_to_do, only: [:show, :update, :destroy]

  # GET /to_dos
  def index
    render json:  { to_do: ToDo.all,  adapter: :json_api }
  end

  # GET /to_dos/1
  def show
    render json: @to_do
  end

  # POST /to_dos
  def create
    @to_do = ToDo.new(to_do_params)

    if @to_do.save
      render json: @to_do, status: :created
    else
      render json: @to_do.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /to_dos/1
  def update
    to_do_params
    if @to_do.update(to_do_params_state)
      render json: @to_do
    else
      render json: @to_do.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_to_do
      @to_do = ToDo.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id]) if params[:user_id]
    end

    # Only allow a trusted parameter "white list" through.
    def to_do_params
      params.require(:to_do).permit(:title, :description, :state, :user_id)
    end
    def to_do_params_state
      params.require(:to_do).permit(:state, :user_id)
    end
end
