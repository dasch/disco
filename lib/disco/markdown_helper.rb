require 'active_support/core_ext/string/output_safety'
require 'rdiscount'

module Disco
  module MarkdownHelper
    def markdown(mkd, options = {})
      extensions = [:smart, :autolink]

      unless options[:allow_html]
        extensions << :filter_html
      end

      RDiscount.new(mkd, *extensions).to_html.html_safe
    end
  end
end
