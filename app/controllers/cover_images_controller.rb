class CoverImagesController < ApplicationController
  before_action :set_cover_image, only: [:show, :edit, :update, :destroy]
  layout "backend"
  before_filter :authenticate_admin!
  # GET /cover_images
  # GET /cover_images.json
  def index
    @cover_images = CoverImage.all
  end

  # GET /cover_images/1
  # GET /cover_images/1.json
  def show
  end

  # GET /cover_images/new
  def new
    @cover_image = CoverImage.new
  end

  # GET /cover_images/1/edit
  def edit
  end

  # POST /cover_images
  # POST /cover_images.json
  def create
    @cover_image = CoverImage.new(cover_image_params)

    respond_to do |format|
      if @cover_image.save
        format.html { redirect_to @cover_image, notice: 'Cover image was successfully created.' }
        format.json { render :show, status: :created, location: @cover_image }
      else
        format.html { render :new }
        format.json { render json: @cover_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cover_images/1
  # PATCH/PUT /cover_images/1.json
  def update
    respond_to do |format|
      if @cover_image.update(cover_image_params)
        format.html { redirect_to cover_images_path, notice: 'Cover image was successfully updated.' }
        format.json { render :show, status: :ok, location: @cover_image }
      else
        format.html { render :edit }
        format.json { render json: @cover_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cover_images/1
  # DELETE /cover_images/1.json
  def destroy
    @cover_image.destroy
    respond_to do |format|
      format.html { redirect_to cover_images_url, notice: 'Cover image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cover_image
      @cover_image = CoverImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cover_image_params
        params.require(:cover_image).permit(:cover_photo)
    end
end
