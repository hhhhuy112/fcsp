class AddCandidatesCountToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :candidates_count, :integer
  end
end
