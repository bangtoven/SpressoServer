class MenusController < ApplicationController
  # GET cafes/1/menus
  # GET cafes/1/menus.json
  def index
    @cafe = Cafe.find(params[:cafe_id])
    @menus = @cafe.menus

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @menus }
    end
  end

  # GET cafes/1/menus/1
  # GET cafes/1/menus/1.json
  def show
    @cafe = Cafe.find(params[:cafe_id])
    @menu = @cafe.menus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @menu }
    end
  end

  # GET cafes/1/menus/new
  # GET cafes/1/menus/new.json
  def new
    @cafe = Cafe.find(params[:cafe_id])
    @menu = @cafe.menus.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @menu }
    end
  end

  # GET cafes/1/menus/1/edit
  def edit
    @cafe = Cafe.find(params[:cafe_id])
    @menu = @cafe.menus.find(params[:id])
  end

  # POST cafes/1/menus
  # POST cafes/1/menus.json
  def create
    @cafe = Cafe.find(params[:cafe_id])
    @menu = @cafe.menus.build(params[:menu])

    respond_to do |format|
      if @menu.save
        format.html { redirect_to([@menu.cafe, @menu], :notice => 'Menu was successfully created.') }
        format.json { render :json => @menu, :status => :created, :location => [@menu.cafe, @menu] }
      else
        format.html { render :action => "new" }
        format.json { render :json => @menu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT cafes/1/menus/1
  # PUT cafes/1/menus/1.json
  def update
    @cafe = Cafe.find(params[:cafe_id])
    @menu = @cafe.menus.find(params[:id])

    respond_to do |format|
      if @menu.update_attributes(params[:menu])
        format.html { redirect_to([@menu.cafe, @menu], :notice => 'Menu was successfully updated.') }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @menu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE cafes/1/menus/1
  # DELETE cafes/1/menus/1.json
  def destroy
    @cafe = Cafe.find(params[:cafe_id])
    @menu = @cafe.menus.find(params[:id])
    @menu.destroy

    respond_to do |format|
      format.html { redirect_to cafe_menus_url(cafe) }
      format.json { head :ok }
    end
  end
end
