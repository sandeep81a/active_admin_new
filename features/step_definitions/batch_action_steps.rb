Then /^I (should|should not) see the batch action "([^"]*)"$/ do |maybe, title|
  %{Then I #{maybe} see the batch action :#{title.gsub(' ','').gsub(" Selected", "").underscore} "#{title}"}
end

Then /^I (should|should not) be asked to confirm "([^"]*)" for "([^"]*)"$/ do |maybe, confirmation, title|
  within "#batch_actions_popover" do
    unless maybe == "should not"
      link = page.find "a.batch_action", :text => title
      link["data-confirm"].should match( confirmation )
    else
      page.should_not have_css("a.batch_action", :text => title)
    end
  end
end

Then /^I (should|should not) see the batch action :([^\s]*) "([^"]*)"$/ do |maybe, sym, title|
  within "#batch_actions_selector" do
    unless maybe == "should not"
      link = page.find "a.batch_action", :text => title
      link["data-action"].should match( sym )
      link[:href].should match( "#" )
    else
      page.should_not have_css("a.batch_action", :text => title)
    end
  end
end

Then /^the (\d+)(?:st|nd|rd|th) batch action should be "([^"]*)"$/ do |index, title|
  within "#batch_actions_selector" do
    page.all( "a.batch_action" )[index.to_i - 1].text.should match( title )
  end
end 

When /^I check the (\d+)(?:st|nd|rd|th) record$/ do |index|
  page.all( "table.index_table input[type=checkbox]" )[index.to_i].set( true )
end

When /^I uncheck the (\d+)(?:st|nd|rd|th) record$/ do |index|
  page.all( "table.index_table input[type='checkbox']" )[index.to_i].set( false )
end

When /^I toggle the collection selection$/ do 
  toggle_box = page.find( "#collection_selection_toggle_all" )
  toggle_box.click
end

Then /^I should see (\d+) record(?:s)? selected$/ do |count|
  within "table.index_table" do
    unless count.to_i == 0
      page.should have_xpath(".//input[@type='checkbox' and @checked='checked']", :count => count)
    else 
      page.should have_no_xpath(".//input[@type='checkbox' and @checked='checked']")
    end
  end
end

Then /^I should see that the batch action button is disabled$/ do
  page.should have_css("#batch_actions_selector .btn.disabled")
end

Then /^I (should|should not) see the batch action button$/ do |maybe|
  if maybe == "should not"
    page.should_not have_css("div.table_tools #batch_actions_selector .btn")    
  else
    page.should have_css("div.table_tools #batch_actions_selector .btn")
  end
end

Then "I should not see the batch actions selector" do
  page.should_not have_css("div.table_tools #batch_actions_selector")
end

Then /^I should see the batch action popover exists$/ do
  page.should have_css("#batch_actions_selector")
end

Given /^I submit the batch action form with "([^"]*)"$/ do |action|
  page.find(:css, "#batch_action").set(action) 

  within("#main_content") do
    @params = page.all("input").reduce({}) do |acc, input|
      acc.store(input['name'], input['value'])
      acc
    end
  end

  form = page.find("#collection_selection")

  page.driver.submit(form['method'].to_sym, form['action'], @params)
end

Then /^I should not see checkboxes in the table$/ do
  page.should_not have_css( ".paginated_collection table input[type=checkbox]" )
end
