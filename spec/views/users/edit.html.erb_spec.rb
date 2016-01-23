require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :first_name => "MyText",
      :last_name => "MyText"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "textarea#user_first_name[name=?]", "user[first_name]"

      assert_select "textarea#user_last_name[name=?]", "user[last_name]"
    end
  end
end
