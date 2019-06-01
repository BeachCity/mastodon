class AlwaysShowSpoilerDisabledForExistingUsers < ActiveRecord::Migration[5.2]
  def self.up
    User.find_each do | user |
      user.settings['enable_always_show_spoiler'] = false;
      user.save
    end
  end
  
  def self.down
    execute "DELETE FROM settings WHERE var = 'enable_always_show_spoiler'"
  end
end
