class ProctorsController < ApplicationController
  before_action :set_proctor, only: [:show, :edit, :update, :destroy]

  # GET /proctors
  # GET /proctors.json
  def index
    @proctors = Proctor.all
  end

  # GET /proctors/1
  # GET /proctors/1.json
  def show
  end

  # GET /proctors/new
  def new
    @proctor = Proctor.new
  end

  # GET /proctors/1/edit
  def edit
  end

  # POST /proctors
  # POST /proctors.json
  def create
    @proctor = Proctor.new(proctor_params)

    respond_to do |format|
      if @proctor.save
        format.html { redirect_to @proctor, notice: 'Proctor was successfully created.' }
        format.json { render :show, status: :created, location: @proctor }
      else
        format.html { render :new }
        format.json { render json: @proctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proctors/1
  # PATCH/PUT /proctors/1.json
  def update
    respond_to do |format|
      if @proctor.update(proctor_params)
        format.html { redirect_to @proctor, notice: 'Proctor was successfully updated.' }
        format.json { render :show, status: :ok, location: @proctor }
      else
        format.html { render :edit }
        format.json { render json: @proctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proctors/1
  # DELETE /proctors/1.json
  def destroy
    @proctor.destroy
    respond_to do |format|
      format.html { redirect_to proctors_url, notice: 'Proctor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proctor
      @proctor = Proctor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proctor_params
      params.require(:proctor).permit(:name)
    end
end
