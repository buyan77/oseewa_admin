require 'rails_helper'

RSpec.describe "blogs/show", :type => :view do
  before(:each) do
    @blog = assign(:blog, Blog.create!(
      :user_id => 1,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Title/)
  end
end
