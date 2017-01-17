class MainController < ApplicationController
 def index
   @input_md = ''
   @output_pandoc = ''
   @output_github = ''
   @output_multi = ''
 end

 def convert
   @input_md = params[:'input-markdown']
   @output_pandoc = 'ここに' + @input_md + 'のPandoc Markdownが入る'
   @output_github = 'ここに' + @input_md + 'のGitHub Flavored Markdownが入る'
   @output_multi = 'ここに' + @input_md + 'のMultiMarkdownが入る'

   render action: :index
 end
end
