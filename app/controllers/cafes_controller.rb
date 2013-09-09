class CafesController < ApplicationController
    
    def all
        @cafes = Cafe.all
        render json: @cafes.map {|cafe| cafe.attributes.merge({:menus=>cafe.menus}) }
    end
    
  # GET /cafes
  # GET /cafes.json
  def index
    @cafes = Cafe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cafes }
    end
  end

  # GET /cafes/1
  # GET /cafes/1.json
  def show
    @cafe = Cafe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cafe }
    end
  end

  # GET /cafes/new
  # GET /cafes/new.json
  def new
    @cafe = Cafe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cafe }
    end
  end

  # GET /cafes/1/edit
  def edit
    @cafe = Cafe.find(params[:id])
  end

  # POST /cafes
  # POST /cafes.json
  def create
    @cafe = Cafe.new(params[:cafe])

    respond_to do |format|
      if @cafe.save
        format.html { redirect_to @cafe, notice: 'Cafe was successfully created.' }
        format.json { render json: @cafe, status: :created, location: @cafe }
      else
        format.html { render action: "new" }
        format.json { render json: @cafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cafes/1
  # PUT /cafes/1.json
  def update
    @cafe = Cafe.find(params[:id])

    respond_to do |format|
      if @cafe.update_attributes(params[:cafe])
        format.html { redirect_to @cafe, notice: 'Cafe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cafes/1
  # DELETE /cafes/1.json
  def destroy
    @cafe = Cafe.find(params[:id])
    @cafe.destroy

    respond_to do |format|
      format.html { redirect_to cafes_url }
      format.json { head :no_content }
    end
  end
end
