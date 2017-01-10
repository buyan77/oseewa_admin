require 'rails_helper'

RSpec.describe "blogs/new", :type => :view do
  before(:each) do
    assign(:blog, Blog.new(
      :user_id => 1,
      :title => "MyString"
    ))
  end

  it "renders new blog form" do
    render

    assert_select "form[action=?][method=?]", blogs_path, "post" do

      assert_select "input#blog_user_id[name=?]", "blog[user_id]"

      assert_select "input#blog_title[name=?]", "blog[title]"
    end
  end
end
