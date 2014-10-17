class JobRecipeLog < ActiveRecord::Base
  self.table_name = "job_recipe_log"

  module STATUS
    PROGRESS = 0
    SUCCESS  = 1
    FAILURE  = 2
  end

  belongs_to :job_recipe

  scope :recent, ->(count) { order("`id` DESC").limit(count) }
  scope :progress, -> { where(status: STATUS::PROGRESS) }

  def progress?
    status == STATUS::PROGRESS
  end

  def success?
    status == STATUS::SUCCESS
  end

  def failure?
    status == STATUS::FAILURE
  end
end
