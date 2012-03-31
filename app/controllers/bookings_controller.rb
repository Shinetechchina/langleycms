class BookingsController < ApplicationController
  # GET /bookings
  # GET /bookings.json
  #def index
  #  @bookings = Booking.all
  #
  #  respond_to do |format|
  #    format.html # index.html.erb
  #    format.json { render json: @bookings }
  #  end
  #end
  #
  ## GET /bookings/1
  ## GET /bookings/1.json
  def show
    $book_type=params[:book_type]
    $weeks=params[:weeks]
    $adults=params[:adults]
    $children=params[:children]

    Booking.where(:id => 1).each do |booking|
      booking.location = @book_type
      booking.number_adults = @adults
      booking.number_children = @children
      booking.number_weeks = @weeks
      booking.save
    end


    #@booking = Booking.where(:id => 1)


    respond_to do |format|
      format.html { redirect_to("/book-a-trip") }
      #format.js { render :json => { :only => @weeks}.to_json}
      #format.json { render :json => $booking}

    end
  end
  #
  ## GET /bookings/new
  ## GET /bookings/new.json
  #
  #def new
  #  @book_type=params[:book_type]
  #  @weeks=params[:weeks]
  #  @adults=params[:adults]
  #  @children=params[:children]
  #
  #  Booking.where(:id => 15).each do |booking|
  #    booking.location = @book_type
  #    booking.save
  #  end
  #
  #  @booking=Booking.where(:id => 15)
  #
  #  respond_to do |format|
  #    format.js {@bt = @book_type}
  #    format.json { render json: @booking }
  #    format.xml { render xml: @booking }
  #    #format.html { redirect_to( "/boka-resa" ) }# new.html.erb
  #  end
  #end
  #
  ## GET /bookings/1/edit
  #def edit
  #  @booking = Booking.find(params[:id])
  #end
  #
  ## POST /bookings
  ## POST /bookings.json
  def create


    #@booking = Booking.new(params[:booking])

    respond_to do |format|
      # if @booking.save
      #format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
      #   format.json { render json: @booking , status: :created, location: @booking }
      #else
      #  format.html { render action: "new" }
      #  format.json { render json: @booking.errors, status: :unprocessable_entity }

    end
  end

  ## PUT /bookings/1
  ## PUT /bookings/1.json
  #def update
  #  @booking = Booking.find(params[:id])
  #
  #  respond_to do |format|
  #    if @booking.update_attributes(params[:booking])
  #      format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
  #      format.json { head :no_content }
  #    else
  #      format.html { render action: "edit" }
  #      format.json { render json: @booking.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end
  #
  ## DELETE /bookings/1
  ## DELETE /bookings/1.json
  #def destroy
  #  @booking = Booking.find(params[:id])
  #  @booking.destroy
  #
  #  respond_to do |format|
  #    format.html { redirect_to bookings_url }
  #    format.json { head :no_content }
  #  end
  #end

  def at
    @book_type=params[:book_type]
    @weeks=params[:weeks]
    @adults=params[:adults]
    @children=params[:children]
    @book=[@book_type, @weeks, @adults, @children]

    respond_to do |format|
      format.json { head :no_content }
    end
  end

end


