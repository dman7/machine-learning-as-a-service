class TrainingDataSet < ActiveRecord::Base

  #----------------------------------------------------------------------------

  belongs_to :developer
  has_many   :prediction_models

  #----------------------------------------------------------------------------

  validates :developer_id, :presence => true
  validates :raw_content,  :presence => true

  #----------------------------------------------------------------------------

end
