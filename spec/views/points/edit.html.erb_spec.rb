require 'spec_helper'

describe "points/edit.html.erb" do
  before(:each) do
    @point = assign(:point, stub_model(Point,
      :name => "MyString",
      :distance => "9.99",
      :elevation => "9.99",
      :d1 => "9.99",
      :d2 => "9.99",
      :section => "MyString"
    ))
  end

  it "renders the edit point form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => points_path(@point), :method => "post" do
      assert_select "input#point_name", :name => "point[name]"
      assert_select "input#point_distance", :name => "point[distance]"
      assert_select "input#point_elevation", :name => "point[elevation]"
      assert_select "input#point_d1", :name => "point[d1]"
      assert_select "input#point_d2", :name => "point[d2]"
      assert_select "input#point_section", :name => "point[section]"
    end
  end
end
