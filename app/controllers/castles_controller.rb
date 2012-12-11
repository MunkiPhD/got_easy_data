class CastlesController < ApplicationController
  # GET /castles
  # GET /castles.json
  def index
    @castles = Castle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @castles.to_json }
    end
  end

  # GET /castles/1
  # GET /castles/1.json
  def show
    @castle = Castle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @castle }
    end
  end

  # GET /castles/new
  # GET /castles/new.json
  def new
    @castle = Castle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @castle }
    end
  end

  # GET /castles/1/edit
  def edit
    @castle = Castle.find(params[:id])
  end

  # POST /castles
  # POST /castles.json
  def create
    @castle = Castle.new(params[:castle])

    respond_to do |format|
      if @castle.save
        format.html { redirect_to castles_path, success: 'Castle was successfully created.' }
        format.json { render json: @castle, status: :created, location: @castle }
      else
        format.html { render action: "new" }
        format.json { render json: @castle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /castles/1
  # PUT /castles/1.json
  def update
    @castle = Castle.find(params[:id])

    respond_to do |format|
      if @castle.update_attributes(params[:castle])
        format.html { redirect_to @castle, success: 'Castle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @castle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /castles/1
  # DELETE /castles/1.json
  def destroy
    @castle = Castle.find(params[:id])
    @castle.destroy

    respond_to do |format|
      format.html { redirect_to castles_url }
      format.json { head :no_content }
    end
  end
end
