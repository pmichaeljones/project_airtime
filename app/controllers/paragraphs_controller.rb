class ParagraphsController < ApplicationController

  def create
   new_paragraph = Paragraph.new(title: params[:title], content: params[:content])
   new_paragraph.save
   redirect_to dashboard_path
  end

  def destroy
    paragraph = Paragraph.find(params[:id])
    paragraph.delete
    redirect_to dashboard_path
  end

end
