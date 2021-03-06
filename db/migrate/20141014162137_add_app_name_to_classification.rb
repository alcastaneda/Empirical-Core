class AddAppNameToClassification < ActiveRecord::Migration
  def change

    add_column :activity_classifications, :app_name, :string

    ActivityClassification.where(key: 'story').first.update_column(:app_name, 'grammar')
    ActivityClassification.where(key: 'practice_question_set').first.update_column(:app_name, 'grammar')

  end
end
