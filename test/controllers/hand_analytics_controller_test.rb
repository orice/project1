require 'test_helper'

class HandAnalyticsControllerTest < ActionController::TestCase
  setup do
    @hand_analytic = hand_analytics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hand_analytics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hand_analytic" do
    assert_difference('HandAnalytic.count') do
      post :create, hand_analytic: { flop: @hand_analytic.flop, my_hand: @hand_analytic.my_hand, number_of_players: @hand_analytic.number_of_players, river: @hand_analytic.river, turn: @hand_analytic.turn }
    end

    assert_redirected_to hand_analytic_path(assigns(:hand_analytic))
  end

  test "should show hand_analytic" do
    get :show, id: @hand_analytic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hand_analytic
    assert_response :success
  end

  test "should update hand_analytic" do
    patch :update, id: @hand_analytic, hand_analytic: { flop: @hand_analytic.flop, my_hand: @hand_analytic.my_hand, number_of_players: @hand_analytic.number_of_players, river: @hand_analytic.river, turn: @hand_analytic.turn }
    assert_redirected_to hand_analytic_path(assigns(:hand_analytic))
  end

  test "should destroy hand_analytic" do
    assert_difference('HandAnalytic.count', -1) do
      delete :destroy, id: @hand_analytic
    end

    assert_redirected_to hand_analytics_path
  end
end
