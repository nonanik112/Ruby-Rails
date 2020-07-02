class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :context
      t.string :slug

      t.timestamps
    end
  end
end
