require 'active_support/core_ext/string/output_safety'
require 'rdiscount'

module Disco
  module MarkdownHelper
    def markdown(mkd, options = {})
      d = RDiscount.new(mkd)

      d.smart = true
      d.autolink = true
      d.filter_html = !options[:allow_html]
      
      ActiveSupport::SafeBuffer.new(d.to_html)
    end
  end
end
