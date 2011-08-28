class Vote < ActiveRecord::Migration
  def self.up
    change_table :votes do |t|
      t.string :ip
    end
  end

  def self.down
  end
end
