require 'test_helper'

class UserAlbumsControllerTest < ActionController::TestCase
  setup do
    @user_album = user_albums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_albums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_album" do
    assert_difference('UserAlbum.count') do
      post :create, user_album: { album_id: @user_album.album_id, user_id: @user_album.user_id }
    end

    assert_redirected_to user_album_path(assigns(:user_album))
  end

  test "should show user_album" do
    get :show, id: @user_album
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_album
    assert_response :success
  end

  test "should update user_album" do
    patch :update, id: @user_album, user_album: { album_id: @user_album.album_id, user_id: @user_album.user_id }
    assert_redirected_to user_album_path(assigns(:user_album))
  end

  test "should destroy user_album" do
    assert_difference('UserAlbum.count', -1) do
      delete :destroy, id: @user_album
    end

    assert_redirected_to user_albums_path
  end
end
