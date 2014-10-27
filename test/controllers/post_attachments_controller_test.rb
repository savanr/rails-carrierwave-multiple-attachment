require 'test_helper'

class PostAttachmentsControllerTest < ActionController::TestCase
  setup do
    @post_attachment = post_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_attachment" do
    assert_difference('PostAttachment.count') do
      post :create, post_attachment: { avatar: @post_attachment.avatar, post_id: @post_attachment.post_id }
    end

    assert_redirected_to post_attachment_path(assigns(:post_attachment))
  end

  test "should show post_attachment" do
    get :show, id: @post_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_attachment
    assert_response :success
  end

  test "should update post_attachment" do
    patch :update, id: @post_attachment, post_attachment: { avatar: @post_attachment.avatar, post_id: @post_attachment.post_id }
    assert_redirected_to post_attachment_path(assigns(:post_attachment))
  end

  test "should destroy post_attachment" do
    assert_difference('PostAttachment.count', -1) do
      delete :destroy, id: @post_attachment
    end

    assert_redirected_to post_attachments_path
  end
end
