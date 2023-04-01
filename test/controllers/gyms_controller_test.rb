require "test_helper"

class GymsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gym = gyms(:one)
  end

  test "should get index" do
    get gyms_url, as: :json
    assert_response :success
  end

  test "should create gym" do
    assert_difference("Gym.count") do
      post gyms_url, params: { gym: { admin_id: @gym.admin_id, contact: @gym.contact, image: @gym.image, location: @gym.location, name: @gym.name, operatingHours: @gym.operatingHours, price: @gym.price } }, as: :json
    end

    assert_response :created
  end

  test "should show gym" do
    get gym_url(@gym), as: :json
    assert_response :success
  end

  test "should update gym" do
    patch gym_url(@gym), params: { gym: { admin_id: @gym.admin_id, contact: @gym.contact, image: @gym.image, location: @gym.location, name: @gym.name, operatingHours: @gym.operatingHours, price: @gym.price } }, as: :json
    assert_response :success
  end

  test "should destroy gym" do
    assert_difference("Gym.count", -1) do
      delete gym_url(@gym), as: :json
    end

    assert_response :no_content
  end
end
