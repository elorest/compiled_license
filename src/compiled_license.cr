require "./compiled_license/version"

module Compiled
  module License
    def self.display
      {{ run("../compiled_license/licenses.cr").stringify }}
    end
  end
end

if ARGV[0]? && ARGV[0]? == "--license"
  puts Amber::Support::Licenses.display 
  exit 0 
end
