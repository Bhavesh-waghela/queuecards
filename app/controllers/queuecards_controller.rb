class QueuecardsController < ApplicationController
  before_action :set_queuecard, only: [:show, :tags, :update, :destroy]

  # GET /queuecards
  def index
    @queuecards = Queuecard.all

    render json: @queuecards
  end

  # GET /queuecards/1
  def show
    render json: @queuecard
  end

  # POST /queuecards
  def create
    @queuecard = Queuecard.new(queuecard_params)

    if @queuecard.save
      render json: @queuecard, status: :created, location: @queuecard
    else
      render json: @queuecard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /queuecards/1
  def update
    if @queuecard.update(queuecard_params)
      render json: @queuecard
    else
      render json: @queuecard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /queuecards/1
  def destroy
    @queuecard.destroy
  end

  def tags
    @queuecard.tags
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_queuecard
      @queuecard = Queuecard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def queuecard_params
      params.require(:queuecard).permit(:user_id, :question, :answer)
    end
end
