class RawContentParserWorker
  include Sidekiq::Worker
  sidekiq_options :retry => true, :backtrace => true, :queue => :parsing

  #----------------------------------------------------------------------------

  def perform(training_data_set_id)
    data = TrainingDataSet.find(training_data_set_id)
  end

  #----------------------------------------------------------------------------
end
