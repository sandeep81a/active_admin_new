require 'spec_helper'

def it_should_have_view(key, value)
  it "should have #{value} for view key '#{key}'" do
    subject.send(key).should  == value
  end
end

describe ActiveAdmin::ViewFactory do

  it_should_have_view :global_navigation,    ActiveAdmin::Views::TabbedNavigation
  it_should_have_view :utility_navigation,   ActiveAdmin::Views::UtilityNav
  it_should_have_view :site_title,           ActiveAdmin::Views::SiteTitle
  it_should_have_view :action_items,         ActiveAdmin::Views::ActionItems
  it_should_have_view :header,               ActiveAdmin::Views::Header
  it_should_have_view :blank_slate,          ActiveAdmin::Views::BlankSlate

  it_should_have_view :dashboard_page,       ActiveAdmin::Views::Pages::Dashboard
  it_should_have_view :layout,               ActiveAdmin::Views::Pages::Layout

end
