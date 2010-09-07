require 'test_helper'

class DiscoTest < ActiveSupport::TestCase
  include Disco::MarkdownHelper

  test "should parse simple markdown" do
    assert_markdown "<p><em>hello</em></p>", "*hello*"
    assert_markdown "<p><strong>hello</strong></p>", "**hello**"
  end

  private

  def assert_markdown(expected_html, mkd, options = {})
    assert_equal expected_html + "\n", markdown(mkd, options)
  end
end
