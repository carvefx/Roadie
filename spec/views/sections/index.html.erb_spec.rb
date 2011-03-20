require 'spec_helper'

describe "sections/index.html.erb" do
  before(:each) do
    assign(:sections, [
      stub_model(Section,
        :name => "Name",
        :length => "9.99"
      ),
      stub_model(Section,
        :name => "Name",
        :length => "9.99"
      )
    ])
  end

  it "renders a list of sections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
