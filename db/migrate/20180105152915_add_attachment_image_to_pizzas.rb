class AddAttachmentImageToPizzas < ActiveRecord::Migration[5.1]
  def self.up
    change_table :pizzas do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :pizzas, :image
  end
end
