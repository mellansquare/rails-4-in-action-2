class CreateJoinTableTagsTickets < ActiveRecord::Migration
  def change
    create_join_table :tags, :tickets do |t|
      t.index %i[tag_id ticket_id]
      t.index %i[ticket_id tag_id]
    end
  end
end
