class YouVideosController < ApplicationController
  before_action :set_you_video, only: [:show, :edit, :update, :destroy]

  def index
    @you_videos = YouVideo.all
  end

  def show
  end

  def new
    @you_video = YouVideo.new
  end

  def edit
  end

  def create
    @you_video = YouVideo.new(you_video_params)

    respond_to do |format|
      if @you_video.save
        format.html { redirect_to @you_video, notice: 'You video was successfully created.' }
        format.json { render :show, status: :created, location: @you_video }
      else
        format.html { render :new }
        format.json { render json: @you_video.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @you_video.update(you_video_params)
        format.html { redirect_to @you_video, notice: 'You video was successfully updated.' }
        format.json { render :show, status: :ok, location: @you_video }
      else
        format.html { render :edit }
        format.json { render json: @you_video.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @you_video.destroy
    respond_to do |format|
      format.html { redirect_to you_videos_url, notice: 'You video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_you_video
      @you_video = YouVideo.find(params[:id])
    end

    def you_video_params
      params.require(:you_video).permit(:youtube_link, :title, :description, :user_id)
    end
end
