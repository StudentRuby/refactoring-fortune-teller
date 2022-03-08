class FortunesController < ApplicationController
  def horoscopes
    @zodiac = params.fetch("the_sign")
    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(@zodiac.to_sym)
    @horoscope = this_zodiac.fetch(:horoscope)

    @array_of_numbers = Zodiac.lucky_numbers

    render({ :template => "zodiac_templates/fortune.html.erb" })
  end
end
