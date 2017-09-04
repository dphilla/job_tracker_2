class CommentsController < ApplicationController
  before_action :find_company_job

  def index
    @comments = Comment.all
  end

  def create
    @comment = @job.comments.new(comment_params)
    @comment.save
    redirect_to company_job_path(@company, @job)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def find_company_job
    @company = Company.find(params[:company_id])
    @job = Job.find(params[:job_id])
  end
end
