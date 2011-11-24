class BrochuresController < ApplicationController
  # GET /brochures
  # GET /brochures.json
  def index
    @brochures = Brochure.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @brochures }
    end
  end

  # GET /brochures/1
  # GET /brochures/1.json
  def show
    @brochure = Brochure.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @brochure }
    end
  end

  # GET /brochures/new
  # GET /brochures/new.json
  def new
    @brochure = Brochure.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @brochure }
    end
  end

  # GET /brochures/1/edit
  def edit
    @brochure = Brochure.find(params[:id])
  end

  # POST /brochures
  # POST /brochures.json
  def create
    @brochure = Brochure.new(params[:brochure])

    respond_to do |format|
      if @brochure.save
        format.html { redirect_to @brochure, notice: 'Brochure was successfully created.' }
        format.json { render json: @brochure, status: :created, location: @brochure }
      else
        format.html { render action: "new" }
        format.json { render json: @brochure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /brochures/1
  # PUT /brochures/1.json
  def update
    @brochure = Brochure.find(params[:id])

    respond_to do |format|
      if @brochure.update_attributes(params[:brochure])
        format.html { redirect_to @brochure, notice: 'Brochure was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @brochure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brochures/1
  # DELETE /brochures/1.json
  def destroy
    @brochure = Brochure.find(params[:id])
    @brochure.destroy

    respond_to do |format|
      format.html { redirect_to brochures_url }
      format.json { head :ok }
    end
  end
end
