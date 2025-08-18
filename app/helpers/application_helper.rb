module ApplicationHelper
  def primary_button_class
    "bg-gradient-to-r from-orange-500 to-orange-600 hover:from-orange-600 hover:to-orange-700 text-white py-1 px-4 rounded-lg cursor-pointer font-semibold"
  end

  def secondary_button_class
    "font-semibold py-1 px-4 rounded-lg text-white border border-1 border-orange-500 cursor-pointer text-orange-400 hover:bg-orange-500 hover:text-white font-semibold transition-all duration-200"
  end
end
