require File.join(File.dirname(__FILE__), 'en')

module R18n::Locales
  class EnGb < En
    set :title => 'British English',
        :code =>  'en-GB',
        :sublocales => %w{en},
        
        :time_format => ' %H:%M',
        :full_format => '%B %e'
  end
end
