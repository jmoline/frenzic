require 'test_helper'

class PhotoGalleryTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert PhotoGallery.new.valid?
  end
end
