Given /^Pagina inicial$/ do
  visit '/'
end

Then /^Debo ver longitud de palabra (\d+)$/ do |text|
  last_response.body.should =~ /#{text}/m
end

Then /^debo ver los (\d+) casilleros de las letras$/ do |text|
  texto =  "_ " * text.to_i 
  last_response.body.should =~ /#{texto}/m
end

When /^el usuario ingresa "(.*?)" con "(.*?)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^acciona "(.*)"$/ do |name|
  click_button(name)
end

Then /^visualiza "(.*?)"$/ do |text|
  last_response.body.should =~ /#{text}/m
end