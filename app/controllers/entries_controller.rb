class EntriesController < ApplicationController

  def index
    # redirect user
    @entry = Entry.find_by({ id: params[:id] })
    redirect_to "/places/#{@entry.place_id}"
  end
  
  def show
    # redirect user
    @entry = Entry.find_by({ id: params[:id] })
    redirect_to "/places/#{@entry.place_id}"
  end

  def new
    @place = Place.find_by({ id: params[:place_id] })
  end

  def create
    # start with a new Entry
    @entry = Entry.new

    # assign user-entered form data to Entry's columns
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]

    @entry["place_id"] = params["place_id"]

    # save Entry row
    @entry.save

    # redirect user
    redirect_to "/places/#{@entry["place_id"]}"
  end

  def edit
    # redirect user
    @entry = Entry.find_by({ id: params[:id] })
    redirect_to "/places/#{@entry.place_id}"
  end

  def update
    # redirect user
    @entry = Entry.find_by({ id: params[:id] })
    redirect_to "/places/#{@entry.place_id}"
  end

  def destroy
    # redirect user
    @entry = Entry.find_by({ id: params[:id] })
    redirect_to "/places/#{@entry.place_id}"
  end

end
