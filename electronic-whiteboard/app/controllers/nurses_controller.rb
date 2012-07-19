class NursesController < ApplicationController
  # GET /nurses
  # GET /nurses.json
  def index
    @nurses = Nurse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nurses }
    end
  end

  # GET /nurses/1
  # GET /nurses/1.json
  def show
    @nurse = Nurse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nurse }
    end
  end

  # GET /nurses/new
  # GET /nurses/new.json
  def new
    @nurse = Nurse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nurse }
    end
  end

  # GET /nurses/1/edit
  def edit
    @nurse = Nurse.find(params[:id])
  end

  # POST /nurses
  # POST /nurses.json
  def create
    @nurse = Nurse.new(params[:nurse])

    respond_to do |format|
      if @nurse.save
        format.html { redirect_to @nurse, notice: 'Nurse was successfully created.' }
        format.json { render json: @nurse, status: :created, location: @nurse }
      else
        format.html { render action: "new" }
        format.json { render json: @nurse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nurses/1
  # PUT /nurses/1.json
  def update
    @nurse = Nurse.find(params[:id])

    respond_to do |format|
      if @nurse.update_attributes(params[:nurse])
        format.html { redirect_to @nurse, notice: 'Nurse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nurse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nurses/1
  # DELETE /nurses/1.json
  def destroy
    @nurse = Nurse.find(params[:id])
    @nurse.destroy

    respond_to do |format|
      format.html { redirect_to nurses_url }
      format.json { head :no_content }
    end
  end
end
