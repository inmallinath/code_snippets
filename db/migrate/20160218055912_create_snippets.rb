class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :title
      t.text :content
      t.boolean :display

      t.timestamps null: false
    end
  end
end
