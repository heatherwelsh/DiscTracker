class DiscColorsController < ApplicationController
  # GET /disc_colors
  # GET /disc_colors.json
  def index
    @disc_colors = DiscColor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @disc_colors }
    end
  end

  # GET /disc_colors/1
  # GET /disc_colors/1.json
  def show
    @disc_color = DiscColor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @disc_color }
    end
  end

  # GET /disc_colors/new
  # GET /disc_colors/new.json
  def new
    @disc_color = DiscColor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @disc_color }
    end
  end

  # GET /disc_colors/1/edit
  def edit
    @disc_color = DiscColor.find(params[:id])
  end

  # POST /disc_colors
  # POST /disc_colors.json
  def create
    @disc_color = DiscColor.new(params[:disc_color])

    respond_to do |format|
      if @disc_color.save
        format.html { redirect_to @disc_color, notice: 'Disc color was successfully created.' }
        format.json { render json: @disc_color, status: :created, location: @disc_color }
      else
        format.html { render action: "new" }
        format.json { render json: @disc_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /disc_colors/1
  # PUT /disc_colors/1.json
  def update
    @disc_color = DiscColor.find(params[:id])

    respond_to do |format|
      if @disc_color.update_attributes(params[:disc_color])
        format.html { redirect_to @disc_color, notice: 'Disc color was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @disc_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disc_colors/1
  # DELETE /disc_colors/1.json
  def destroy
    @disc_color = DiscColor.find(params[:id])
    @disc_color.destroy

    respond_to do |format|
      format.html { redirect_to disc_colors_url }
      format.json { head :no_content }
    end
  end
end
