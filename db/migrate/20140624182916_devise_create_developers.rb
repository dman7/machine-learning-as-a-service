class DeviseCreateDevelopers < ActiveRecord::Migration
  def change
    create_table(:developers) do |t|
      # Default columns for a Developer instance.
      t.string :name
      t.string :api_key

      ## Database authenticatable
      # We'll allow for standard login/registration since
      # developers will most likely want that.
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      t.timestamps
    end

    add_index :developers, :email,                unique: true
    add_index :developers, :reset_password_token, unique: true
  end
end
