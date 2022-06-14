class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      #Userモデルのidと関連付け
      t.integer :user_id
      #Bookモデルのidと関連付け
      t.integer :book_id

      t.timestamps
    end
  end
end
