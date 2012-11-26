class AddTuitionToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :tuition, :integer

  end
end
