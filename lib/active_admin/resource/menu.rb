module ActiveAdmin
  class Resource

    module Menu

      # Set the menu options. To not add this resource to the menu, just
      # call #menu(false)
      def menu_item_options=(options)
        if options == false
          @display_menu = false
          @menu_item_options = {}
        else
          self.menu_item_menu_name = options[:menu_name]
          @menu_item_options = default_menu_options.merge(options)
        end
      end

      def menu_item_options
        @menu_item_options ||= default_menu_options
      end

      # The default menu options to pass through to MenuItem.new
      def default_menu_options
        menu_resource_class = respond_to?(:resource_class) ? resource_class : self
        the_resource = self # Make it available in the proc

        {
          :id => resource_name.plural,
          :label => proc{ plural_resource_label },
          :url => proc{ the_resource.route_collection_path(params) },
          :if => proc { authorized?(:read, menu_resource_class) }
        }
      end

      def display_menu_name=(menu_name)
        @display_menu_name = menu_name
      end

      def display_menu_name
        @display_menu_name ||= DEFAULT_MENU
      end

      def display_menu
        namespace.fetch_menu(display_menu_name)
      end

      def menu_item_menu_name=(menu_name)
        @menu_item_menu_name = menu_name
      end

      def menu_item_menu_name
        @menu_item_menu_name ||= DEFAULT_MENU
      end

      def add_to_menu(menu_collection)
        if include_in_menu?
          @menu_item = menu_collection.add(menu_item_menu_name, menu_item_options)
        end
      end

      def menu_item
        @menu_item
      end

      # Should this resource be added to the menu system?
      def include_in_menu?
        @display_menu != false
      end

    end
  end
end
