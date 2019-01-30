class CreatePostcards < ActiveRecord::Migration[5.2]
  def change
    create_table :postcards do |t|
      t.integer :journal_id
      t.string :location
      t.string :message
      t.date :date
      t.string :photo_url

      t.timestamps
    end
  end
end
