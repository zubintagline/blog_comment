require "application_system_test_case"

class BlogPostsTest < ApplicationSystemTestCase
  setup do
    @blog_post = blog_posts(:one)
  end

  test "visiting the index" do
    visit blog_posts_url
    assert_selector "h1", text: "Blog Posts"
  end

  test "creating a Blog post" do
    visit blog_posts_url
    click_on "New Blog Post"

    fill_in "Description", with: @blog_post.description
    fill_in "Picture", with: @blog_post.picture
    fill_in "User", with: @blog_post.user_id
    click_on "Create Blog post"

    assert_text "Blog post was successfully created"
    click_on "Back"
  end

  test "updating a Blog post" do
    visit blog_posts_url
    click_on "Edit", match: :first

    fill_in "Description", with: @blog_post.description
    fill_in "Picture", with: @blog_post.picture
    fill_in "User", with: @blog_post.user_id
    click_on "Update Blog post"

    assert_text "Blog post was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog post" do
    visit blog_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog post was successfully destroyed"
  end
end
