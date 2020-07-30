class CreateAwsdes < ActiveRecord::Migration[5.2]
  def change
    create_table :awsdes do |t|
      t.string :title
      t.text :context

      t.timestamps
    end
  end
end
