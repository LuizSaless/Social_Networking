class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :body
      t.references :user, foreing_key: true
      t.timestamps
    end
  end
end
