class JobQueue
  def self.enqueue!(job_recipe)
    recipe = YAML.load(job_recipe.recipe)
    recipe["options"] ||= {}
    recipe["options"]["job_recipe_id"] = job_recipe.id
    $redis.lpush(queue_name, YAML.dump(recipe))
  end

  def self.queue_name
    "job_queue"
  end
end
