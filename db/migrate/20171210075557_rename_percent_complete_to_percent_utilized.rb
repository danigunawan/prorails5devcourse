class RenamePercentCompleteToPercentUtilized < ActiveRecord::Migration[5.1]
  def change
  	rename_column :skills, :percent_complete, :percent_utilized
  end
end
