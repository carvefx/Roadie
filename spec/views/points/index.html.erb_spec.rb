require 'spec_helper'

describe "points/index.html.erb" do
  before(:each) do
    assign(:points, [
      stub_model(Point,
        :name => "Name",
        :distance => "9.99",
        :elevation => "9.99",
        :d1 => "9.99",
        :d2 => "9.99",
        :section => "Section"
      ),
      stub_model(Point,
        :name => "Name",
        :distance => "9.99",
        :elevation => "9.99",
        :d1 => "9.99",
        :d2 => "9.99",
        :section => "Section"
      )
    ])
  end

  it "renders a list of points" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Section".to_s, :count => 2
  end
end
