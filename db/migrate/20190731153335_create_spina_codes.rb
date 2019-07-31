class CreateSpinaCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :spina_codes do |t|
      t.text :content

      t.timestamps
    end
  end
end
