class TrainingDataSet < ActiveRecord::Base

  #----------------------------------------------------------------------------

  belongs_to :developer

  #----------------------------------------------------------------------------

  validates :developer_id, :presence => true
  validates :raw_content,  :presence => true

  #----------------------------------------------------------------------------

end
