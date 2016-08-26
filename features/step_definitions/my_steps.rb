Given /^Pagina inicial$/ do
  visit '/'
end

Then /^Debo ver longitud de palabra (\d+)$/ do |text|
  last_response.body.should == text
end