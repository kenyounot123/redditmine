# frozen_string_literal: true

class NavbarComponent < ViewComponent::Base
  include ApplicationHelper

  def initialize
  end

  private

  def navbar_hero_logo
    image_tag("icon.svg", class: "w-6 h-6")
  end

  def sign_in_button
    link_to "Sign In", "#", class: primary_button_class
  end
end
