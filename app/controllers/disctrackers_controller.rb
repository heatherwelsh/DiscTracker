class DisctrackersController < ApplicationController
  # GET /disctrackers
  # GET /disctrackers.json
  def index
    @disctrackers = Disctracker.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @disctrackers }
    end
  end

  # GET /disctrackers/1
  # GET /disctrackers/1.json
  def show
    @disctracker = Disctracker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @disctracker }
    end
  end

  # GET /disctrackers/new
  # GET /disctrackers/new.json
  def new
    @disctracker = Disctracker.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @disctracker }
    end
  end

  # GET /disctrackers/1/edit
  def edit
    @disctracker = Disctracker.find(params[:id])
  end

  # POST /disctrackers
  # POST /disctrackers.json
  def create
    @disctracker = Disctracker.new(params[:disctracker])

    respond_to do |format|
      if @disctracker.save
        format.html { redirect_to @disctracker, notice: 'Disctracker was successfully created.' }
        format.json { render json: @disctracker, status: :created, location: @disctracker }
      else
        format.html { render action: "new" }
        format.json { render json: @disctracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /disctrackers/1
  # PUT /disctrackers/1.json
  def update
    @disctracker = Disctracker.find(params[:id])

    respond_to do |format|
      if @disctracker.update_attributes(params[:disctracker])
        format.html { redirect_to @disctracker, notice: 'Disctracker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @disctracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disctrackers/1
  # DELETE /disctrackers/1.json
  def destroy
    @disctracker = Disctracker.find(params[:id])
    @disctracker.destroy

    respond_to do |format|
      format.html { redirect_to disctrackers_url }
      format.json { head :no_content }
    end
  end
end
