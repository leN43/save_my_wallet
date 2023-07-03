module ApplicationHelper
  def all_categories
    %w[health shopping hobbies food travel regular-expenses income]
  end

  # change format
  def date_format(date)
    date.strftime('%d %b %Y')
  end

  def number_to_euro(number)
    number_to_currency(number, unit: '€', separator: ',', delimiter: ' ')
  end

  # Icon for each category


  def all_categories_with_icon
    {
      'health'=> "#{icon_class('heartbeat')}", # health
      'shopping'=> "#{icon_class('shopping-bag')}", # shopping
      'hobbies' => "#{icon_class('gamepad')}", # hobbies
      'food'=> "#{icon_class('utensils')}", # food
      'travel' => "#{icon_class('plane')}", # travel
      'regular-expenses' => "#{icon_class('money-bill')}", # regular-expenses
      'income'=> "#{icon_class('money-bill-wave')}" # income
    }
  end

  private
  def icon_class(icon)
    "fa-solid fa-#{icon}"
  end
end
