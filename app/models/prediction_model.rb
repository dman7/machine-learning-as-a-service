class PredictionModel < ActiveRecord::Base
  #----------------------------------------------------------------------------

  validates :algorithm_id,         :presence => true
  validates :training_data_set_id, :presence => true

  #----------------------------------------------------------------------------

  belongs_to :algorithm
  belongs_to :training_data_set

  #----------------------------------------------------------------------------

end
