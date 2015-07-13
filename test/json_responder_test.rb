require 'test_helper'

class JsonResponderTest < ActionController::TestCase
  tests ArtistsController
  
  setup do
    @artist = Artist.create(name: "foo")
  end

  def json
    JSON.parse(response.body)
  end

  test "should update artist" do
    put :update, format: :json, id: @artist, name: "bar"

    assert_response :success
    assert_equal json["name"], "bar"
  end

  test "should return errors" do
    put :update, format: :json, id: @artist, name: nil

    assert_response :unprocessable_entity
    assert_includes json, "name"
    refute_includes json, "errors"
  end
end
