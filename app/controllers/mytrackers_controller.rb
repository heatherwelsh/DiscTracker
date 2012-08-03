class MytrackersController < ApplicationController
  #before_filter(:authenticate_user!)

  # GET /mytrackers
  # GET /mytrackers.json
  def index
    #@mytrackers = Mytracker.all

   # respond_to do |format|
   #   format.html # index.html.erb
   #   format.json { render json: @mytrackers }
   # end
  end

  # GET /mytrackers/1
  # GET /mytrackers/1.json
  def show
    @mytracker = Mytracker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mytracker }
    end
  end

  # GET /mytrackers/new
  # GET /mytrackers/new.json
  def new
   # @mytracker = Mytracker.new

   # respond_to do |format|
   #   format.html # new.html.erb
   #   format.json { render json: @mytracker }
   # end
  end

  # GET /mytrackers/1/edit
  def edit
    @mytracker = Mytracker.find(params[:id])
  end

  # POST /mytrackers
  # POST /mytrackers.json
  def create
    @mytracker = Mytracker.new(params[:mytracker])

    respond_to do |format|
      if @mytracker.save
        format.html { redirect_to @mytracker, notice: 'Mytracker was successfully created.' }
        format.json { render json: @mytracker, status: :created, location: @mytracker }
      else
        format.html { render action: "new" }
        format.json { render json: @mytracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mytrackers/1
  # PUT /mytrackers/1.json
  def update
    @mytracker = Mytracker.find(params[:id])

    respond_to do |format|
      if @mytracker.update_attributes(params[:mytracker])
        format.html { redirect_to @mytracker, notice: 'Mytracker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mytracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mytrackers/1
  # DELETE /mytrackers/1.json
  def destroy
    @mytracker = Mytracker.find(params[:id])
    @mytracker.destroy

    respond_to do |format|
      format.html { redirect_to mytrackers_url }
      format.json { head :no_content }
    end
  end
end
