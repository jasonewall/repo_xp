module RepoXp
  class BaseRepository
    attr_reader :adapter

    class << self
      def entity_class
        self.name =~ /(.+)Repository$/ and Object.const_get($1)
      end
    end

    def initialize(config = :default)
      raise "whoa buddy, let's not get crazy here" unless config == :default
    end

    def entity_class
      self.class.entity_class
    end

    def save
      adapter.save
    end

    def find_by_id(id)
      adapter.find_by_id(id)
    end
  end
end
