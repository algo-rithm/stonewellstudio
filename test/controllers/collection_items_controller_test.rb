require 'test_helper'

class CollectionItemsControllerTest < ActionController::TestCase
  setup do
    @collection_item = collection_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:collection_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create collection_item" do
    assert_difference('CollectionItem.count') do
      post :create, collection_item: { collection_group_id: @collection_item.collection_group_id, description: @collection_item.description, imageUrl1: @collection_item.imageUrl1, imageUrl2: @collection_item.imageUrl2, imageUrl3: @collection_item.imageUrl3, imageUrl4: @collection_item.imageUrl4, imageUrl5: @collection_item.imageUrl5, imageUrl6: @collection_item.imageUrl6, name: @collection_item.name, vidUrl1: @collection_item.vidUrl1 }
    end

    assert_redirected_to collection_item_path(assigns(:collection_item))
  end

  test "should show collection_item" do
    get :show, id: @collection_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @collection_item
    assert_response :success
  end

  test "should update collection_item" do
    patch :update, id: @collection_item, collection_item: { collection_group_id: @collection_item.collection_group_id, description: @collection_item.description, imageUrl1: @collection_item.imageUrl1, imageUrl2: @collection_item.imageUrl2, imageUrl3: @collection_item.imageUrl3, imageUrl4: @collection_item.imageUrl4, imageUrl5: @collection_item.imageUrl5, imageUrl6: @collection_item.imageUrl6, name: @collection_item.name, vidUrl1: @collection_item.vidUrl1 }
    assert_redirected_to collection_item_path(assigns(:collection_item))
  end

  test "should destroy collection_item" do
    assert_difference('CollectionItem.count', -1) do
      delete :destroy, id: @collection_item
    end

    assert_redirected_to collection_items_path
  end
end
