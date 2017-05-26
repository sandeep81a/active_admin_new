require 'active_admin/helpers/optional_display'

module ActiveAdmin

  class Resource
    module ActionItems

      # Add the default action items to a resource when it's
      # initialized
      def initialize(*args)
        super
        add_default_action_items
      end

      # @return [Array] The set of action items for this resource
      def action_items
        @action_items ||= []
      end

      # Add a new action item to a resource
      #
      # @param [Hash] options valid keys include:
      #                 :only:  A single or array of controller actions to display
      #                         this action item on.
      #                 :except: A single or array of controller actions not to
      #                          display this action item on.
      def add_action_item(options = {}, &block)
        self.action_items << ActiveAdmin::ActionItem.new(options, &block)
      end

      # Returns a set of action items to display for a specific controller action
      #
      # @param [String, Symbol] action the action to retrieve action items for
      #
      # @return [Array] Array of ActionItems for the controller actions
      def action_items_for(action, render_context = nil)
        action_items.select{|item| item.display_on?(action, render_context) }
      end

      # Clears all the existing action items for this resource
      def clear_action_items!
        @action_items = []
      end

      # Used by active_admin Base view
      def action_items?
        !!@action_items && @action_items.any?
      end

      private

      # Adds the default action items to each resource
      def add_default_action_items
        # New Link on all actions except :new and :show
        add_action_item :except => [:new, :show] do
          if controller.action_methods.include?('new') && authorized?(ActiveAdmin::Auth::CREATE, active_admin_config.resource_class)
            link_to(I18n.t('active_admin.new_model', :model => active_admin_config.resource_label), new_resource_path, :class => "btn btn-large")
          end
        end

        # Edit link on show
        add_action_item :only => :show do
          if controller.action_methods.include?('edit') && authorized?(ActiveAdmin::Auth::UPDATE, resource)
            link_to(I18n.t('active_admin.edit_model', :model => active_admin_config.resource_label), edit_resource_path(resource), :class => "btn btn-large")
          end
        end

        # Destroy link on show
        add_action_item :only => :show do
          if controller.action_methods.include?("destroy") && authorized?(ActiveAdmin::Auth::DESTROY, resource)
            link_to(I18n.t('active_admin.delete_model', :model => active_admin_config.resource_label),
              resource_path(resource),
              :method => :delete, :data => {:confirm => I18n.t('active_admin.delete_confirmation')}, :class => "btn btn-large")
          end
        end
      end
    end
  end

  # Model class to store the data for ActionItems
  class ActionItem
    include ActiveAdmin::OptionalDisplay

    attr_accessor :block

    def initialize(options = {}, &block)
      @options, @block = options, block
      normalize_display_options!
    end
  end

end
