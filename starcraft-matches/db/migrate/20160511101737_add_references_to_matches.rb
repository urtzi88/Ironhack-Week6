class AddReferencesToMatches < ActiveRecord::Migration
  def change
    add_reference :matches, :winner, references: :player, foreign_key: true
    add_reference :matches, :loser, references: :player, foreign_key: true

  end
end
