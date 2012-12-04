class AddCourseToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :course, :string

  end
end
