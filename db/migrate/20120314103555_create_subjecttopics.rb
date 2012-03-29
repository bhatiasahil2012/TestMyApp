class CreateSubjecttopics < ActiveRecord::Migration
  def change
    create_table :subjecttopics do |t|
      t.integer :subject_id
      t.string :topic_name
      t.timestamps
    end
  end
end
