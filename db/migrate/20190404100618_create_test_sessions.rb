class CreateTestSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :test_sessions do |t|
      t.text :content
      t.text :list_exams
      t.datetime :time_public
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
