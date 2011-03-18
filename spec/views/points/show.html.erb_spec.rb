require 'spec_helper'

describe "points/show.html.erb" do
  before(:each) do
    @point = assign(:point, stub_model(Point,
      :name => "Name",
      :distance => "9.99",
      :elevation => "9.99",
      :d1 => "9.99",
      :d2 => "9.99",
      :section => "Section"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Section/)
  end
end
