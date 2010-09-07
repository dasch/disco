require 'active_support/core_ext/string/output_safety'
require 'rdiscount'

module Disco
  module MarkdownHelper
    # Process the Markdown string +mkd+ using the RDiscount parser.
    #
    # If <tt>:allow_html => true</tt> is supplied, HTML code will not be
    # escaped.
    #
    # The returned string is <tt>html_safe</tt> and can be used directly
    # in your views.
    def markdown(mkd, options = {})
      d = RDiscount.new(mkd)

      d.smart = true
      d.autolink = true
      d.filter_html = !options[:allow_html]
      
      ActiveSupport::SafeBuffer.new(d.to_html)
    end
  end
end
