require 'test_helper'

class BurgerPlacesControllerTest < ActionController::TestCase
  setup do
    @burger_place = burger_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:burger_places)
  end

  test "should create burger_place" do
    assert_difference('BurgerPlace.count') do
      post :create, burger_place: { address: @burger_place.address, city: @burger_place.city, name: @burger_place.name, phone_no: @burger_place.phone_no, post_code: @burger_place.post_code, review_score: @burger_place.review_score, suburb: @burger_place.suburb, user_id: @burger_place.user_id, web_address: @burger_place.web_address }
    end

    assert_response 201
  end

  test "should show burger_place" do
    get :show, id: @burger_place
    assert_response :success
  end

  test "should update burger_place" do
    put :update, id: @burger_place, burger_place: { address: @burger_place.address, city: @burger_place.city, name: @burger_place.name, phone_no: @burger_place.phone_no, post_code: @burger_place.post_code, review_score: @burger_place.review_score, suburb: @burger_place.suburb, user_id: @burger_place.user_id, web_address: @burger_place.web_address }
    assert_response 204
  end

  test "should destroy burger_place" do
    assert_difference('BurgerPlace.count', -1) do
      delete :destroy, id: @burger_place
    end

    assert_response 204
  end
end
