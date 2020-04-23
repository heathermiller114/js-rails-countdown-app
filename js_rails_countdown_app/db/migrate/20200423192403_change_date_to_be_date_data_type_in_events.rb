class ChangeDateToBeDateDataTypeInEvents < ActiveRecord::Migration[5.2]
  def up
    change_column :events, :date, :date, using:'date::date'
  end

  def down
    change_column :events, :date, :string
  end
end
