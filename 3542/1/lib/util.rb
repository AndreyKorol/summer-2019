module Util
  module Parse
    class HTML
      def self.parse(url)
        Nokogiri::HTML(HTTParty.get(url))
      end
    end

    class Yaml
      def self.parse(path)
        YAML.safe_load FileManager.open_file path
      end
    end
  end

  class FileManager
    def self.open_file(path)
      File.open File.expand_path(path)
    end
  end
end