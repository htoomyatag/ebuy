class AddQuestionAnswerToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :question, :text
  	add_column :products, :answer, :text
  end
end
