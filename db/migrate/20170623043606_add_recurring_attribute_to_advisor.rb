class AddRecurringAttributeToAdvisor < ActiveRecord::Migration[5.1]
  def change
    add_column :advisors, :recurring, :text
  end
end
