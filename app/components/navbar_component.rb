# frozen_string_literal: true

class NavbarComponent < ViewComponent::Base
  def initialize
  end

  private

  def navbar_hero_logo
    image_tag("icon.svg", class: "w-6 h-6")
  end
end
