module RepoXp
  module ActiveRecord
    class Adapter
      module Models
        extend self

        def [](model_name)
          return const_get(model_name) if const_defined?(model_name)
          const_set(model_name, Class.new(::ActiveRecord::Base))
        end
      end

      attr_reader :model_name

      def initialize(model_name)
        @model_name = model_name
      end

      def save(record)
        record.save
      end

      def find_by_id(id)
        model_class.find(id)
      end

      def model_class
        Models[model_name]
      end
    end
  end
end
