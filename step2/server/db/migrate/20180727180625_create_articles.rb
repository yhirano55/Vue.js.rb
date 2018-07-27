class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.references :user, foreign_key: true
      t.references :group, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end