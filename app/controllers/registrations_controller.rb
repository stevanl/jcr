class RegistrationsController < ApplicationController
  # GET /registrations/new
  # GET /registrations/new.json
  def new
    @registration = Registration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @registration }
    end
  end

  # POST /registrations
  # POST /registrations.json
  def create
    @registration = Registration.new(params[:registration])

    respond_to do |format|
      if @registration.save
        format.html { redirect_to @registration, notice: 'Registration was successfully created.' }
        format.json { render json: @registration, status: :created, location: @registration }
      else
        format.html { render action: "new" }
        format.json { render json: @registration.errors, status: :unprocessable_entity }
      end
    end
  end
end
