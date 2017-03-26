class AddParagraphs < ActiveRecord::Migration
  def change
    create_table :paragraphs do |t|
      t.string :title
      t.text :content
      t.timestamps
    end
  end
end
