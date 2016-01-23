require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :first_name => "MyText",
      :last_name => "MyText"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "textarea#user_first_name[name=?]", "user[first_name]"

      assert_select "textarea#user_last_name[name=?]", "user[last_name]"
    end
  end
end
