require 'test_helper'

class DiscoTest < ActiveSupport::TestCase
  include Disco::MarkdownHelper

  test "should parse simple markdown" do
    assert_equal "<p><em>hello</em></p>\n", markdown("*hello*")
  end
end
