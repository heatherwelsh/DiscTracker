class DiscsController < ApplicationController
  before_filter(:authenticate_user!)

  # GET /discs
  # GET /discs.json
  def index
    # @output = "Current Playerid: #{current_user.id}"

    @discs = Disc.where("playerid = #{current_user.id}")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @discs }
    end
  end

  # GET /discs/1
  # GET /discs/1.json
  def show
   # @disc = Disc.find(params[:id])
    @discs = Disc.where("playerid = #{current_user.id}")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @disc }
    end
  end

  # GET /discs/new
  # GET /discs/new.json
  def new
    @disc = Disc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @disc }
    end
  end

  # GET /discs/1/edit
  def edit
    @disc = Disc.find(params[:id])
  end

  # POST /discs
  # POST /discs.json
  def create
    # @disc = Disc.new(params[:disc])
    params[:disc][:disc_id] = SecureRandom.hex(10)
    @disc = Disc.create(params[:disc])

    respond_to do |format|
      if @disc.save
       # format.html { redirect_to @disc, notice: 'Disc was successfully created.' }
        format.html { redirect_to :action => "index"}
        format.json { render json: @disc, status: :created, location: @disc }
      else
        format.html { render action: "new" }
        format.json { render json: @disc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /discs/1
  # PUT /discs/1.json
  def update
    @disc = Disc.find(params[:id])

    respond_to do |format|
      if @disc.update_attributes(params[:disc])
        #format.html { redirect_to @disc, notice: 'Disc was successfully updated.' }
        format.html { redirect_to :action => "index"}
        format.json { head :no_content }
      else
        format.html { render action: "index" }
        format.json { render json: @disc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discs/1
  # DELETE /discs/1.json
  def destroy
    @disc = Disc.find(params[:id])
    @disc.destroy

    respond_to do |format|
      format.html { redirect_to discs_url }
      format.json { head :no_content }
    end
  end

  # REMOVE /discs/1
  def remove
    @disc = Disc.find(params[:id])
    @disc.update_attributes(:playerid => 0)

    respond_to do |format|
        format.html {redirect_to :action => "index"}
    end
  end
end
