# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

a = Algorithm.find_by(:string_identifier => Algorithm::Types::LINEAR_REGRESSION)
if a.nil?
  a                   = Algorithm.new
  a.name              = "Simple Linear Regression"
  a.description       = "Simple Linear Regression uses the least square estimation method with a single input variable and a single output variable."
  a.string_identifier = Algorithm::Types::LINEAR_REGRESSION
  a.save!
end
