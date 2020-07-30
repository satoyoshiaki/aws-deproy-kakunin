class AwsdesController < ApplicationController
  before_action :set_awsde, only: [:show, :edit, :update, :destroy]

  # GET /awsdes
  # GET /awsdes.json
  def index
    @awsdes = Awsde.all
  end

  # GET /awsdes/1
  # GET /awsdes/1.json
  def show
  end

  # GET /awsdes/new
  def new
    @awsde = Awsde.new
  end

  # GET /awsdes/1/edit
  def edit
  end

  # POST /awsdes
  # POST /awsdes.json
  def create
    @awsde = Awsde.new(awsde_params)

    respond_to do |format|
      if @awsde.save
        format.html { redirect_to @awsde, notice: 'Awsde was successfully created.' }
        format.json { render :show, status: :created, location: @awsde }
      else
        format.html { render :new }
        format.json { render json: @awsde.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /awsdes/1
  # PATCH/PUT /awsdes/1.json
  def update
    respond_to do |format|
      if @awsde.update(awsde_params)
        format.html { redirect_to @awsde, notice: 'Awsde was successfully updated.' }
        format.json { render :show, status: :ok, location: @awsde }
      else
        format.html { render :edit }
        format.json { render json: @awsde.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /awsdes/1
  # DELETE /awsdes/1.json
  def destroy
    @awsde.destroy
    respond_to do |format|
      format.html { redirect_to awsdes_url, notice: 'Awsde was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_awsde
      @awsde = Awsde.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def awsde_params
      params.require(:awsde).permit(:title, :context)
    end
end
