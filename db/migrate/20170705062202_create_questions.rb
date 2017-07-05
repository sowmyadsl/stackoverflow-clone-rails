class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.column :title, :string
      t.column :content, :string
      t.column :tags, :string
      
      t.timestamps
    end
  end
end
