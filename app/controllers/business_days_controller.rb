class BusinessDaysController < ApplicationController
  # GET /business_days
  # GET /business_days.json
  def index
    @business_days = BusinessDay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @business_days }
    end
  end

  # GET /business_days/1
  # GET /business_days/1.json
  def show
    @business_day = BusinessDay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @business_day }
    end
  end

  # GET /business_days/new
  # GET /business_days/new.json
  def new
    @business_day = BusinessDay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @business_day }
    end
  end

  # GET /business_days/1/edit
  def edit
    @business_day = BusinessDay.find(params[:id])
  end

  # POST /business_days
  # POST /business_days.json
  def create
    @business_day = BusinessDay.new(params[:business_day])

    respond_to do |format|
      if @business_day.save
        format.html { redirect_to @business_day, notice: 'Business day was successfully created.' }
        format.json { render json: @business_day, status: :created, location: @business_day }
      else
        format.html { render action: "new" }
        format.json { render json: @business_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /business_days/1
  # PUT /business_days/1.json
  def update
    @business_day = BusinessDay.find(params[:id])

    respond_to do |format|
      if @business_day.update_attributes(params[:business_day])
        format.html { redirect_to @business_day, notice: 'Business day was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @business_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_days/1
  # DELETE /business_days/1.json
  def destroy
    @business_day = BusinessDay.find(params[:id])
    @business_day.destroy

    respond_to do |format|
      format.html { redirect_to business_days_url }
      format.json { head :no_content }
    end
  end
end
