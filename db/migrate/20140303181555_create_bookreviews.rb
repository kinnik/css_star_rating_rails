class CreateBookreviews < ActiveRecord::Migration
  def change
    create_table :bookreviews do |t|
      t.integer  :rating
      t.string   :summary
      t.text     :details
      t.integer  :book_id

      t.timestamps
    end
  end
end
