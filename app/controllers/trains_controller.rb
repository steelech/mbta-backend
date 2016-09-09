class TrainsController < ApplicationController
  before_action :set_train, only: [:show, :update, :destroy]

  # GET /trains
  # GET /trains.json
  def index
    @trains = Train.all
    headers['Access-Control-Allow-Origin'] = '*'
    puts Train.all
    puts @trains.class
    render json: @trains
  end

  # GET /trains/1
  # GET /trains/1.json
  def show
    render json: @train
  end

  # POST /trains
  # POST /trains.json
  def create
    @train = Train.new(train_params)

    if @train.save
      render json: @train, status: :created, location: @train
    else
      render json: @train.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trains/1
  # PATCH/PUT /trains/1.json
  def update
    @train = Train.find(params[:id])

    if @train.update(train_params)
      head :no_content
    else
      render json: @train.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trains/1
  # DELETE /trains/1.json
  def destroy
    @train.destroy

    head :no_content
  end

  private

    def set_train
      @train = Train.find(params[:id])
    end

    def train_params
      params.require(:train).permit(:departs, :arrives, :line)
    end
end
