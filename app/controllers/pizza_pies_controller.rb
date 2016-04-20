class PizzaPiesController < ApplicationController
  before_action :set_pizza_py, only: [:show, :edit, :update, :destroy]

  # GET /pizza_pies
  # GET /pizza_pies.json
  def index
    @pizza_pies = PizzaPy.all
  end

  # GET /pizza_pies/1
  # GET /pizza_pies/1.json
  def show
  end

  # GET /pizza_pies/new
  def new
    @pizza_py = PizzaPy.new
  end

  # GET /pizza_pies/1/edit
  def edit
  end

  # POST /pizza_pies
  # POST /pizza_pies.json
  def create
    @pizza_py = PizzaPy.new(pizza_py_params)

    respond_to do |format|
      if @pizza_py.save
        format.html { redirect_to @pizza_py, notice: 'Pizza py was successfully created.' }
        format.json { render :show, status: :created, location: @pizza_py }
      else
        format.html { render :new }
        format.json { render json: @pizza_py.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pizza_pies/1
  # PATCH/PUT /pizza_pies/1.json
  def update
    respond_to do |format|
      if @pizza_py.update(pizza_py_params)
        format.html { redirect_to @pizza_py, notice: 'Pizza py was successfully updated.' }
        format.json { render :show, status: :ok, location: @pizza_py }
      else
        format.html { render :edit }
        format.json { render json: @pizza_py.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizza_pies/1
  # DELETE /pizza_pies/1.json
  def destroy
    @pizza_py.destroy
    respond_to do |format|
      format.html { redirect_to pizza_pies_url, notice: 'Pizza py was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pizza_py
      @pizza_py = PizzaPy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pizza_py_params
      params.fetch(:pizza_py, {})
    end
end
