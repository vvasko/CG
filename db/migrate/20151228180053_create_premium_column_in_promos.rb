class CreatePremiumColumnInPromos < ActiveRecord::Migration
  def change
    change_table :promos do |t|

      t.boolean :premium

    end
  end
end
