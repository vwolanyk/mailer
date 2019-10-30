require 'test_helper'

class LetterWritersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @letter_writer = letter_writers(:one)
  end

  test "should get index" do
    get letter_writers_url
    assert_response :success
  end

  test "should get new" do
    get new_letter_writer_url
    assert_response :success
  end

  test "should create letter_writer" do
    assert_difference('LetterWriter.count') do
      post letter_writers_url, params: { letter_writer: { email: @letter_writer.email, name: @letter_writer.name } }
    end

    assert_redirected_to letter_writer_url(LetterWriter.last)
  end

  test "should show letter_writer" do
    get letter_writer_url(@letter_writer)
    assert_response :success
  end

  test "should get edit" do
    get edit_letter_writer_url(@letter_writer)
    assert_response :success
  end

  test "should update letter_writer" do
    patch letter_writer_url(@letter_writer), params: { letter_writer: { email: @letter_writer.email, name: @letter_writer.name } }
    assert_redirected_to letter_writer_url(@letter_writer)
  end

  test "should destroy letter_writer" do
    assert_difference('LetterWriter.count', -1) do
      delete letter_writer_url(@letter_writer)
    end

    assert_redirected_to letter_writers_url
  end
end
