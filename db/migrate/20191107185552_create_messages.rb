class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|

      t.string :message
      t.boolean :read
      t.references :message_reciever, class_name: 'User'
      t.references :message_sender, class_name: 'User'
      
  
      t.timestamps
    end
  add_foreign_key :messages, :users, column: :message_reciever_id
  add_foreign_key :messages, :users, column: :message_sender_id
    
  end
end
