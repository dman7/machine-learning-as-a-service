class CreatePredictionModels < ActiveRecord::Migration
  def change
    create_table :prediction_models do |t|
      t.integer :algorithm_id,         :null => false
      t.integer :training_data_set_id, :null => false
      t.text    :parameters
    end
  end
end
