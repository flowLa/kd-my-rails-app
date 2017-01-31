require "open3"

def exec_pandoc(input, from)
  output = "翻訳したやつ"
  output
end

class MainController < ApplicationController
  def index
    @input_md = ''
    @output_pandoc = ''
  end

  def convert
    @input_md = params[:'input-markdown']

    @output_pandoc = exec_pandoc(@input_md, 'markdown')
    render action: :index
  end
end
