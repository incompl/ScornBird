class AddStatus < ActiveRecord::Migration
  def self.up
    change_table :votes do |t|
      t.string :status
    end
  end

  def self.down
  end
end
