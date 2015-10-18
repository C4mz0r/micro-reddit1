class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :post, index: true
      t.references :user, index: true #I added this

      t.timestamps null: false
    end
    add_foreign_key :comments, :posts
    # I added this...
    add_foreign_key :comments, :users
  end
end
