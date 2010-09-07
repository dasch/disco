require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

require 'disco/markdown_helper'
require 'action_view'

ActionView::Base.send(:include, Disco::MarkdownHelper)
