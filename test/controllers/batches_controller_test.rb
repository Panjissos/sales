require "test_helper"

class BatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @batch = batches(:one)
  end

  test "should get index" do
    get batches_url, as: :json
    assert_response :success
  end

  test "should create batch" do
    assert_difference("Batch.count") do
      post batches_url, params: { batch: { purchaseChannel: @batch.purchaseChannel, reference: @batch.reference } }, as: :json
    end

    assert_response :created
  end

  test "should show batch" do
    get batch_url(@batch), as: :json
    assert_response :success
  end

  test "should update batch" do
    patch batch_url(@batch), params: { batch: { purchaseChannel: @batch.purchaseChannel, reference: @batch.reference } }, as: :json
    assert_response :success
  end

  test "should destroy batch" do
    assert_difference("Batch.count", -1) do
      delete batch_url(@batch), as: :json
    end

    assert_response :no_content
  end
end
