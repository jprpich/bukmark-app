class CreateWebmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :webmarks do |t|
      t.string :theme_img

      t.timestamps
    end
  end
end
