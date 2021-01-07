class AddUsersToConversations < ActiveRecord::Migration[6.0]
  def change
    add_reference :conversations, :host, foreign_key: { to_table: 'users' }
    add_reference :conversations, :guest, foreign_key: { to_table: 'users' }
  end
end
