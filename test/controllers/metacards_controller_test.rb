require 'test_helper'

class MetacardsControllerTest < ActionController::TestCase
  setup do
    @metacard = metacards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:metacards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create metacard" do
    assert_difference('Metacard.count') do
      post :create, metacard: { converted_mana_cost: @metacard.converted_mana_cost, loyalty: @metacard.loyalty, mana_cost: @metacard.mana_cost, name: @metacard.name, power: @metacard.power, rules_text: @metacard.rules_text, toughness: @metacard.toughness, type_line: @metacard.type_line }
    end

    assert_redirected_to metacard_path(assigns(:metacard))
  end

  test "should show metacard" do
    get :show, id: @metacard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @metacard
    assert_response :success
  end

  test "should update metacard" do
    patch :update, id: @metacard, metacard: { converted_mana_cost: @metacard.converted_mana_cost, loyalty: @metacard.loyalty, mana_cost: @metacard.mana_cost, name: @metacard.name, power: @metacard.power, rules_text: @metacard.rules_text, toughness: @metacard.toughness, type_line: @metacard.type_line }
    assert_redirected_to metacard_path(assigns(:metacard))
  end

  test "should destroy metacard" do
    assert_difference('Metacard.count', -1) do
      delete :destroy, id: @metacard
    end

    assert_redirected_to metacards_path
  end
end
