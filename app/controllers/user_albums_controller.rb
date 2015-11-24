class UserAlbumsController < ApplicationController
  before_action :set_user_album, only: [:show, :edit, :update, :destroy]

  # GET /user_albums
  # GET /user_albums.json
  def index
    @user_albums = UserAlbum.all
  end

  # GET /user_albums/1
  # GET /user_albums/1.json
  def show
  end

  # GET /user_albums/new
  def new
    @user_album = UserAlbum.new
  end

  # GET /user_albums/1/edit
  def edit
  end

  # POST /user_albums
  # POST /user_albums.json
  def create
    @user_album = UserAlbum.new(user_album_params)

    respond_to do |format|
      if @user_album.save
        format.html { redirect_to @user_album, notice: 'Album was successfully added to your Media Library.' }
        format.json { render :show, status: :created, location: @user_album }
      else
        format.html { render :new }
        format.json { render json: @user_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_albums/1
  # PATCH/PUT /user_albums/1.json
  def update
    respond_to do |format|
      if @user_album.update(user_album_params)
        format.html { redirect_to @user_album, notice: 'User album was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_album }
      else
        format.html { render :edit }
        format.json { render json: @user_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_albums/1
  # DELETE /user_albums/1.json
  def destroy
    @user_album.destroy
    respond_to do |format|
      format.html { redirect_to user_albums_url, notice: 'User album was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_album
      @user_album = UserAlbum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_album_params
      params.require(:user_album).permit(:user_id, :album_id)
    end
end
