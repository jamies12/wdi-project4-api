class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, except: [:update, :create, :destroy]

  # GET /contents
  def index
    @contents = Content.all

    render json: @contents
  end

  # GET /contents/1
  def show
    render json: @content
  end

  # POST /contents
  def create

    @content = Content.new(Uploader.upload(content_params))
    @content.user = current_user
    if @content.save
      render json: @content, status: :created, location: @content
    else
      render json: @content.errors, status: :unprocessable_entity
    end

  end

  # PATCH/PUT /contents/1
  def update
    if @content.update(content_params)
      render json: @content
    else
      render json: @content.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contents/1
  def destroy
    if @content.user == current_user || !@content.user
      @content.destroy
    else
      render json: { errors: ["Unauthorized"] }, status: 401
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content
      @content = Content.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def content_params
      params.permit(:user_id, :title, :position, :image, :base64, :audio, :text)
    end
end
