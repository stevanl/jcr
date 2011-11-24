class RegistrationsController < ApplicationController
  # GET /registrations/new
  # GET /registrations/new.json
  def new
    @registration = Registration.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # POST /registrations
  # POST /registrations.json
  def create
    @registration = Registration.new(params[:registration])

    respond_to do |format|
      if @registration.save
        NotificationMailer.registration_email(@registration).deliver
        format.html { render "thanks" }
      else
        format.html { render action: "new" }
      end
    end
  end
end
