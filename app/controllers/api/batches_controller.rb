class  Api::BatchesController < ApplicationController
  before_action :set_batch, only: %i[ show update destroy ]

  # GET /batches
  def index
    @batches = Batch.all

    render json: @batches
  end

  # GET /batches/1
  def show
    render json: @batch
  end

  # POST /batches
  def create
    @batch = Batch.new(batch_params)

    if @batch.save
      render json: @batch, status: :created, location: @batch
    else
      render json: @batch.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /batches/1
  def update
    if @batch.update(batch_params)
      render json: @batch
    else
      render json: @batch.errors, status: :unprocessable_entity
    end
  end

  # DELETE /batches/1
  def destroy
    @batch.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_batch
      @batch = Batch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def batch_params
      params.require(:batch).permit(:reference, :purchaseChannel)
    end
end
