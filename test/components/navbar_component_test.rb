# frozen_string_literal: true

require "test_helper"

class NavbarComponentTest < ViewComponent::TestCase
  test "renders navbar on landing page" do
    render_inline(NavbarComponent.new(controller: "landings", action: "welcome"))
    assert_component_rendered
  end
  test "component is not rendered if current page is not the landing page" do
    render_inline(NavbarComponent.new(controller: "bad", action: "no"))
    refute_component_rendered
  end
end
