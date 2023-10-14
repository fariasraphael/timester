class RenameActivityToTitleInActivities < ActiveRecord::Migration[7.1]
  def change
    rename_column :activities, :activity, :title
  end
end
