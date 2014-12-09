require 'rspec-expectations'
require 'page-object'
require 'factory_girl'

FactoryGirl.find_definitions

World(PageObject::PageFactory)
World(FactoryGirl::Syntax::Methods)
