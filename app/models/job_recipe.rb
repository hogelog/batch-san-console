class JobRecipe < ActiveRecord::Base
  self.table_name = "job_recipe"

  has_many :job_recipe_logs

  validates :name, presence: true
  validates :recipe, presence: true

  def enqueue!
    JobQueue.enqueue! self
  end
end
