class CreateAlgorithms < ActiveRecord::Migration
  def change
    create_table :algorithms do |t|
      t.string :name,              :null => false
      t.text   :description,       :null => false
      t.string :string_identifier, :null => false
    end
  end
end
