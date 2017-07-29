class AddProjectIdToStatuses < ActiveRecord::Migration[5.1]
  def change
    add_column :statuses, :project_id, :integer
  end
end
