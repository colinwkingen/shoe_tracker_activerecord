class CreateBasicStructure < ActiveRecord::Migration
  def change
    create_table(:brands) do |t|
      t.column(:name, :string)
    end
    create_table(:stores) do |t|
      t.column(:name, :string)
    end
  end
end
