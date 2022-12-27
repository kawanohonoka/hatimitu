class ResordsController < ApplicationController
  before_action :set_resord, only: %i[ show update destroy ]
  before_action :authenticate_user!

  # GET /resords
  def index
    @resords = Resord.all

    render json: @resords
  end

  # GET /resords/1
  def show
    render json: @resord
  end

  # POST /resords
  def create
    @resord = Resord.new(resord_params)

    if @resord.save
      render json: @resord, status: :created, location: @resord
    else
      render json: @resord.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /resords/1
  def update
    if @resord.update(resord_params)
      render json: @resord
    else
      render json: @resord.errors, status: :unprocessable_entity
    end
  end

  # DELETE /resords/1
  def destroy
    @resord.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resord
      @resord = Resord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def resord_params
      params.require(:resord).permit(:title, :body, :level)
    end
end
