class JobRecipesController < ApplicationController
  def index
    @job_recipes = JobRecipe.all
  end

  def show
    @job_recipe = JobRecipe.find(params[:id])

    @job_recipe_logs = @job_recipe.job_recipe_logs.recent(10)
  end

  def edit
    @job_recipe = JobRecipe.find(params[:id])
  end

  def update
    job_recipe = JobRecipe.find(params[:id])
    job_recipe.update!(job_recipe_params)

    redirect_to job_recipe
  end

  def new
    @job_recipe = JobRecipe.new
  end

  def create
    job_recipe = JobRecipe.create!(job_recipe_params)

    redirect_to job_recipe
  end

  def destroy
    job_recipe = JobRecipe.find(params[:id])
    job_recipe.destroy!
    redirect_to job_recipes_path
  end

  def launch
    job_recipe = JobRecipe.find(params[:id])
    job_recipe.enqueue!
    redirect_to job_recipe
  end

  private

  def job_recipe_params
    params.require(:job_recipe).permit(:name, :recipe)
  end
end
