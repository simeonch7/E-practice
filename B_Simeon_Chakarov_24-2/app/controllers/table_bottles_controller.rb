class TableBottlesController < ApplicationController
  before_action :set_table_bottle, only: [:show, :edit, :update, :destroy]

  # GET /table_bottles
  # GET /table_bottles.json
  def index
    @table_bottles = TableBottle.all
    @tabels = Table.all
    @bottles = Bottle.all
  end

  # GET /table_bottles/1
  # GET /table_bottles/1.json
  def show
  end

  # GET /table_bottles/new
  def new
    @table_bottle = TableBottle.new
  end

  # GET /table_bottles/1/edit
  def edit
  end

  # POST /table_bottles
  # POST /table_bottles.json
  def create
    @table_bottle = TableBottle.new(table_bottle_params)

    respond_to do |format|
      if @table_bottle.save
        format.html { redirect_to @table_bottle, notice: 'Table bottle was successfully created.' }
        format.json { render :show, status: :created, location: @table_bottle }
      else
        format.html { render :new }
        format.json { render json: @table_bottle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_bottles/1
  # PATCH/PUT /table_bottles/1.json
  def update
    respond_to do |format|
      if @table_bottle.update(table_bottle_params)
        format.html { redirect_to @table_bottle, notice: 'Table bottle was successfully updated.' }
        format.json { render :show, status: :ok, location: @table_bottle }
      else
        format.html { render :edit }
        format.json { render json: @table_bottle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_bottles/1
  # DELETE /table_bottles/1.json
  def destroy
    @table_bottle.destroy
    respond_to do |format|
      format.html { redirect_to table_bottles_url, notice: 'Table bottle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_bottle
      @table_bottle = TableBottle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def table_bottle_params
      params.require(:table_bottle).permit(:table_id, :bottle_id)
    end
end
