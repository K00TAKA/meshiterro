class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    # idカラム以外にプライマリキー設定がよくわかってない
    # 参照：https://blog.takanabe.tokyo/2014/11/rails4-dbmigrate%E3%81%A7id%E4%BB%A5%E5%A4%96%E3%81%AE%E3%82%AB%E3%83%A9%E3%83%A0%E3%81%AB%E3%83%97%E3%83%A9%E3%82%A4%E3%83%9E%E3%83%AA%E3%82%AD%E3%83%BC%E3%81%AE%E8%A8%AD%E5%AE%9A%E3%82%92%E8%A1%8C%E3%81%86/
    create_table :post_images, :id => false do |t| 
      t.integer :id, :primary_key => true
      t.string :shop_name
      t.text :caption
      t.integer :user_id
      t.timestamps
    end
  end
end