class Algorithm < ActiveRecord::Base

  #----------------------------------------------------------------------------

  validates :name,              :presence => true
  validates :description,       :presence => true
  validates :string_identifier, :presence => true

  #----------------------------------------------------------------------------

  module Types
    LINEAR_REGRESSION = "simple-linear-regression"
  end

  #----------------------------------------------------------------------------

end
