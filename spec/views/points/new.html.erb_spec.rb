require 'spec_helper'

describe "points/new.html.erb" do
  before(:each) do
    assign(:point, stub_model(Point,
      :name => "MyString",
      :distance => "9.99",
      :elevation => "9.99",
      :d1 => "9.99",
      :d2 => "9.99",
      :section => "MyString"
    ).as_new_record)
  end

  it "renders new point form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => points_path, :method => "post" do
      assert_select "input#point_name", :name => "point[name]"
      assert_select "input#point_distance", :name => "point[distance]"
      assert_select "input#point_elevation", :name => "point[elevation]"
      assert_select "input#point_d1", :name => "point[d1]"
      assert_select "input#point_d2", :name => "point[d2]"
      assert_select "input#point_section", :name => "point[section]"
    end
  end
end
