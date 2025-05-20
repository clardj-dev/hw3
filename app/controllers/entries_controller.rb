class EntriesController < ApplicationController

  def index
    # redirect user
    redirect_to "/entries"
  end
  
  def show
    # redirect user
    redirect_to "/entries"
  end

  def new
    # render view with new Entry form
  end

  def create
    # start with a new Entry
    @entry = Entry.new

    # assign user-entered form data to Entry's columns
    @entry["name"] = params["name"]

    # save Entry row
    @entry.save

    # redirect user
    redirect_to "/entries"
  end

  def edit
    # redirect user
    redirect_to "/entries"
  end

  def update
    # redirect user
    redirect_to "/entries"
  end

  def destroy
    # redirect user
    redirect_to "/entries"
  end

end
