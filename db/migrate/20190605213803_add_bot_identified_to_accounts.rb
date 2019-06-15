class AddBotIdentifiedToAccounts < ActiveRecord::Migration[5.2]
  def change
  	add_column :accounts, :bot_identified, :boolean
  end
end
