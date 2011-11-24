class BrochuresController < ApplicationController
  # GET /brochures/new
  # GET /brochures/new.json
  def new
    @brochure = Brochure.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # POST /brochures
  # POST /brochures.json
  def create
    @brochure = Brochure.new(params[:brochure])

    respond_to do |format|
      if @brochure.save
        NotificationMailer.brochure_email(@brochure).deliver
        format.html { render "thanks" }
      else
        format.html { render action: "new" }
      end
    end
  end
end
