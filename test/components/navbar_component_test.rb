# frozen_string_literal: true

require "test_helper"

class NavbarComponentTest < ViewComponent::TestCase
  def test_component_renders_something_useful
    render_inline(NavbarComponent.new)
    assert_component_rendered
  end
end
