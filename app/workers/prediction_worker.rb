class PredictionWorker
  include Sidekiq::Worker
  sidekiq_options :retry => true, :backtrace => true, :queue => :predicting

  #----------------------------------------------------------------------------

  def perform(algorithm_id, training_data_set_id)
    algorithm = Algorithm.find(algorithm_id)
    data      = TrainingDataSet.find(training_data_set_id)
  end

  #----------------------------------------------------------------------------
end
