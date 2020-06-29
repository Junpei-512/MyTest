class MathematicsController < ApplicationController
  before_action :set_mathematic, only: [:show, :edit, :update, :destroy]

  # GET /mathematics
  # GET /mathematics.json
  def index
    @mathematics = Mathematic.all
  end

  # GET /mathematics/1
  # GET /mathematics/1.json
  def show
  end

  # GET /mathematics/new
  def new
    @mathematic = Mathematic.new
  end

  # GET /mathematics/1/edit
  def edit
  end

  # POST /mathematics
  # POST /mathematics.json
  def create
    @mathematic = Mathematic.new(mathematic_params)

    respond_to do |format|
      if @mathematic.save
        format.html { redirect_to @mathematic, notice: 'Mathematic was successfully created.' }
        format.json { render :show, status: :created, location: @mathematic }
      else
        format.html { render :new }
        format.json { render json: @mathematic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mathematics/1
  # PATCH/PUT /mathematics/1.json
  def update
    respond_to do |format|
      if @mathematic.update(mathematic_params)
        format.html { redirect_to @mathematic, notice: 'Mathematic was successfully updated.' }
        format.json { render :show, status: :ok, location: @mathematic }
      else
        format.html { render :edit }
        format.json { render json: @mathematic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mathematics/1
  # DELETE /mathematics/1.json
  def destroy
    @mathematic.destroy
    respond_to do |format|
      format.html { redirect_to mathematics_url, notice: 'Mathematic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mathematic
      @mathematic = Mathematic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mathematic_params
      params.require(:mathematic).permit(:title, :message)
    end
end
