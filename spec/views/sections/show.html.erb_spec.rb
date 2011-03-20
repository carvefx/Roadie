require 'spec_helper'

describe "sections/show.html.erb" do
  before(:each) do
    @section = assign(:section, stub_model(Section,
      :name => "Name",
      :length => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
  end
end
