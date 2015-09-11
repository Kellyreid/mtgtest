class MetacardsController < ApplicationController
  before_action :set_metacard, only: [:show, :edit, :update, :destroy]

  # GET /metacards
  # GET /metacards.json
  def index
    @metacards = Metacard.all
  end

  # GET /metacards/1
  # GET /metacards/1.json
  def show
  end

  # GET /metacards/new
  def new
    @metacard = Metacard.new
  end

  # GET /metacards/1/edit
  def edit

  end

  # POST /metacards
  # POST /metacards.json
  def create
    @metacard = Metacard.new(metacard_params)

    respond_to do |format|
      if @metacard.save
        format.html { redirect_to @metacard, notice: 'Metacard was successfully created.' }
        format.json { render :show, status: :created, location: @metacard }
      else
        format.html { render :new }
        format.json { render json: @metacard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metacards/1
  # PATCH/PUT /metacards/1.json
  def update
    respond_to do |format|
      if @metacard.update(metacard_params)
        format.html { redirect_to @metacard, notice: 'Metacard was successfully updated.' }
        format.json { render :show, status: :ok, location: @metacard }
      else
        format.html { render :edit }
        format.json { render json: @metacard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metacards/1
  # DELETE /metacards/1.json
  def destroy
    @metacard.destroy
    respond_to do |format|
      format.html { redirect_to metacards_url, notice: 'Metacard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def by_name
    name = params[:name]
    @metacard = Metacard.find_by(name: name)
    respond_to do |format|
      format.html { render :show }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metacard
      @metacard = Metacard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metacard_params
      params.require(:metacard).permit(:name, :rules_text, :mana_cost, :converted_mana_cost, :power, :toughness, :loyalty, :type_line, :notes)
    end
end
