require 'spec_helper'

describe ActiveAdmin::ViewHelpers::FormHelper do
  describe ".hidden_field_tags_for" do
    let(:view) { action_view }

    it "should render hidden field tags for params" do
      view.hidden_field_tags_for(:scope => "All", :filter => "None").should == 
        %{<input id="scope" name="scope" type="hidden" value="All" />\n<input id="filter" name="filter" type="hidden" value="None" />}
    end

    it "should filter out the field passed via the option :except" do
      view.hidden_field_tags_for({:scope => "All", :filter => "None"}, :except => :filter).should == 
        %{<input id="scope" name="scope" type="hidden" value="All" />}
    end
  end
end

