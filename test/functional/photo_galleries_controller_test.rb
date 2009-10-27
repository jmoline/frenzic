require 'test_helper'

class PhotoGalleriesControllerTest < ActionController::TestCase
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    PhotoGallery.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    PhotoGallery.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to photo_gallery_url(assigns(:photo_gallery))
  end
  
  def test_edit
    get :edit, :id => PhotoGallery.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    PhotoGallery.any_instance.stubs(:valid?).returns(false)
    put :update, :id => PhotoGallery.first
    assert_template 'edit'
  end
  
  def test_update_valid
    PhotoGallery.any_instance.stubs(:valid?).returns(true)
    put :update, :id => PhotoGallery.first
    assert_redirected_to photo_gallery_url(assigns(:photo_gallery))
  end
  
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => PhotoGallery.first
    assert_template 'show'
  end
end
