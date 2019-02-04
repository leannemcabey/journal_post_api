class RemoveCurrentJournalFromJournals < ActiveRecord::Migration[5.2]
  def change
    remove_column :journals, :current_journal 
  end
end
