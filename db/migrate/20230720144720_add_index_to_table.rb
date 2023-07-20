class AddIndexToTable < ActiveRecord::Migration[7.0]
  def change
    add_index :blogs, :subject
  end
end
