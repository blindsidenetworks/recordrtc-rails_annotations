class RecordController < ApplicationController
  before_action :set_recording, except: [:index, :new, :refresh_recordings]

  # GET /record
  def index
    @full_name = session[:full_name]

    @recordings = Recording.all
  end

  # GET /record/:id
  def show
  end

  # GET /record/new
  def new
    @recording = Recording.new
  end

  # GET /record/:id/edit
  def edit
  end

  def refresh_recordings
    @recordings = Recording.all

    respond_to do |format|
      format.js
    end
  end

  private
  def set_recording
    @recording = Recording.find(params[:id])
  end
end
