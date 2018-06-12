require 'test_helper'

class TableBottlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @table_bottle = table_bottles(:one)
  end

  test "should get index" do
    get table_bottles_url
    assert_response :success
  end

  test "should get new" do
    get new_table_bottle_url
    assert_response :success
  end

  test "should create table_bottle" do
    assert_difference('TableBottle.count') do
      post table_bottles_url, params: { table_bottle: { bottle_id: @table_bottle.bottle_id, table_id: @table_bottle.table_id } }
    end

    assert_redirected_to table_bottle_url(TableBottle.last)
  end

  test "should show table_bottle" do
    get table_bottle_url(@table_bottle)
    assert_response :success
  end

  test "should get edit" do
    get edit_table_bottle_url(@table_bottle)
    assert_response :success
  end

  test "should update table_bottle" do
    patch table_bottle_url(@table_bottle), params: { table_bottle: { bottle_id: @table_bottle.bottle_id, table_id: @table_bottle.table_id } }
    assert_redirected_to table_bottle_url(@table_bottle)
  end

  test "should destroy table_bottle" do
    assert_difference('TableBottle.count', -1) do
      delete table_bottle_url(@table_bottle)
    end

    assert_redirected_to table_bottles_url
  end
end
