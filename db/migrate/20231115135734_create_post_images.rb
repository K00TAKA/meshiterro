class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    # idカラム以外にプライマリキー設定がよくわかってない
    # 参照：http://www.code-magagine.com/?p=12207
    create_table :post_images, :id => false do |t| 
      t.integer :id, null: false, :primary_key => true
      t.string :shop_name
      t.text :caption
      t.integer :user_id
      t.timestamps
    end
  end
end