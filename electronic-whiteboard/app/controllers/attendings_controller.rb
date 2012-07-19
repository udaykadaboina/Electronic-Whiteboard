class AttendingsController < ApplicationController
  # GET /attendings
  # GET /attendings.json
  def index
    @attendings = Attending.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @attendings }
    end
  end

  # GET /attendings/1
  # GET /attendings/1.json
  def show
    @attending = Attending.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @attending }
    end
  end

  # GET /attendings/new
  # GET /attendings/new.json
  def new
    @attending = Attending.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @attending }
    end
  end

  # GET /attendings/1/edit
  def edit
    @attending = Attending.find(params[:id])
  end

  # POST /attendings
  # POST /attendings.json
  def create
    @attending = Attending.new(params[:attending])

    respond_to do |format|
      if @attending.save
        format.html { redirect_to @attending, notice: 'Attending was successfully created.' }
        format.json { render json: @attending, status: :created, location: @attending }
      else
        format.html { render action: "new" }
        format.json { render json: @attending.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /attendings/1
  # PUT /attendings/1.json
  def update
    @attending = Attending.find(params[:id])

    respond_to do |format|
      if @attending.update_attributes(params[:attending])
        format.html { redirect_to @attending, notice: 'Attending was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @attending.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendings/1
  # DELETE /attendings/1.json
  def destroy
    @attending = Attending.find(params[:id])
    @attending.destroy

    respond_to do |format|
      format.html { redirect_to attendings_url }
      format.json { head :no_content }
    end
  end
end
