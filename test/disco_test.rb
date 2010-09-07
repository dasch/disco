require 'test_helper'

class DiscoTest < ActiveSupport::TestCase
  include Disco::MarkdownHelper

  test "should parse simple markdown" do
    assert_markdown "<p><em>hello</em></p>", "*hello*"
    assert_markdown "<p><strong>hello</strong></p>", "**hello**"
  end

  test "should escape HTML by default" do
    assert_markdown "<p>Hello &lt;em>dawg&lt;/em></p>", "Hello <em>dawg</em>"
  end

  test "should not escape HTML when :allow_html => true" do
    assert_markdown "<p>Hello <em>dawg</em></p>", "Hello <em>dawg</em>", :allow_html => true
  end

  test "should be html_safe" do
    assert markdown("*foo*").html_safe?
  end

  private

  def assert_markdown(expected_html, mkd, options = {})
    assert_equal expected_html + "\n", markdown(mkd, options)
  end
end
