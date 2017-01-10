require 'rails_helper'

RSpec.describe "blogs/edit", :type => :view do
  before(:each) do
    @blog = assign(:blog, Blog.create!(
      :user_id => 1,
      :title => "MyString"
    ))
  end

  it "renders the edit blog form" do
    render

    assert_select "form[action=?][method=?]", blog_path(@blog), "post" do

      assert_select "input#blog_user_id[name=?]", "blog[user_id]"

      assert_select "input#blog_title[name=?]", "blog[title]"
    end
  end
end
