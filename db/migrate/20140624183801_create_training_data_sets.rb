class CreateTrainingDataSets < ActiveRecord::Migration
  def change
    create_table :training_data_sets do |t|
      t.integer :developer_id, :null => false
      t.text    :raw_content,  :null => false
      t.text    :processed_content
    end
  end
end
