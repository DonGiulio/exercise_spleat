class AddDateToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :date, :datetime
  end
end
