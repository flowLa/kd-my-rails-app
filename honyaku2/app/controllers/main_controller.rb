class MainController < ApplicationController
  def index
    @input_md = ''
    @output_pandoc = ''
  end

  def convert
    en_to_ja = {
      "fire" => "火"
    }

    @input_md = params[:'input-markdown']

    if @input_md.present?
      @output_pandoc = @input_md.gsub(/\.*/, en_to_ja)
    else
      @output_pandoc = ""
    end


    render action: :index
  end
end
