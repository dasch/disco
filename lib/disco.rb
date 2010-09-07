require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

require 'disco/markdown_helper'

ActionView::Base.send(:include, Disco::MarkdownHelper)
