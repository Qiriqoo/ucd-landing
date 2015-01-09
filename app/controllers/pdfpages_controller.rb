class PdfpagesController < ApplicationController

  
  def show
    page = params[:id]
    if avalaible_pages.include? page
      respond_to do |format|
        format.pdf do
          render pdf: "pdfpages/#{page.underscore}"
        end
      end
    else
      raise page.inspect
    end
  
  end
  
  private

    def avalaible_pages
      ['surly-2015-catalog']
    end

end