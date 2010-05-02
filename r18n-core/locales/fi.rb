# encoding: utf-8
# Finnish translations by Laura Guillén
module R18n
  class Locales::Fi < Locale
    set :title => 'Suomi',
        
        :wday_names => %w{sunnuntai maanantai tiistai keskiviikko torstai perjantai lauantai},
        :wday_abbrs => %w{su ma ti ke to pe la},
        
        :month_names => %w{tammikuu helmikuu maaliskuu huhtikuu toukokuu kesäkuu
                         heinäkuu elokuu syyskuu lokakuu marraskuu joulukuu},
        :month_abbrs => %w{tam hel maa huh tou kes hei elo syy lok mar jou},
        
        :date_format => '%d/%m/%Y',
        
        :number_decimal => ",",
        :number_group   => " "
    
    # Finnish ordinals are written: 1st => 1. 2nd => 2. 3rd => 3. (ie the number with a dot)
    # Not sure if I need to rewrite format_date_full
  end
end
