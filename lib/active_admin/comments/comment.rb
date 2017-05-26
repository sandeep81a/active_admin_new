require 'kaminari/models/active_record_extension'

module ActiveAdmin

  # manually initialize kaminari for this model
  ::ActiveRecord::Base.send :include, Kaminari::ActiveRecordExtension

  class Comment < ActiveRecord::Base
    belongs_to :resource, :polymorphic => true
    belongs_to :author, :polymorphic => true

    attr_accessible :resource, :resource_id, :resource_type, :body, :namespace

    validates_presence_of :resource
    validates_presence_of :body
    validates_presence_of :namespace

    # @returns [String] The name of the record to use for the polymorphic relationship
    def self.resource_type(record)
      record.class.base_class.name.to_s
    end

    def self.resource_id_cast(record)
      # Postgres adapters won't compare strings to numbers (issue 34)
      if resource_id_type == :string
        record.id.to_s
      else
        record.id
      end
    end

    def self.find_for_resource_in_namespace(resource, namespace)
      where(:resource_type => resource_type(resource),
            :resource_id => resource_id_cast(resource),
            :namespace => namespace.to_s)
    end

    def self.resource_id_type
      columns.select { |i| i.name == "resource_id" }.first.type
    end

    def self.table_name
      @table_name ||= ActiveRecord::Migrator.proper_table_name("active_admin_comments")
    end

  end

end

