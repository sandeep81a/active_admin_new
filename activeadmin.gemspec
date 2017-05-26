# -*- encoding: utf-8 -*-
# stub: activeadmin 0.5.1 ruby lib

Gem::Specification.new do |s|
  s.name = "activeadmin"
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Greg Bell"]
  s.date = "2014-12-02"
  s.description = "The administration framework for Ruby on Rails."
  s.email = ["gregdbell@gmail.com"]
  s.files = [".document", ".gitignore", ".travis.yml", ".yardopts", "CHANGELOG.md", "CONTRIBUTING.md", "Gemfile", "Guardfile", "LICENSE", "README.rdoc", "Rakefile", "activeadmin.gemspec", "app/assets/images/active_admin/admin_notes_icon.png", "app/assets/images/active_admin/datepicker/datepicker-header-bg.png", "app/assets/images/active_admin/datepicker/datepicker-input-icon.png", "app/assets/images/active_admin/datepicker/datepicker-next-link-icon.png", "app/assets/images/active_admin/datepicker/datepicker-nipple.png", "app/assets/images/active_admin/datepicker/datepicker-prev-link-icon.png", "app/assets/images/active_admin/loading.gif", "app/assets/images/active_admin/nested_menu_arrow.gif", "app/assets/images/active_admin/nested_menu_arrow_dark.gif", "app/assets/images/active_admin/orderable.png", "app/assets/javascripts/active_admin/application.js", "app/assets/javascripts/active_admin/base.js", "app/assets/javascripts/active_admin/components/bootstrap-datepicker.js", "app/assets/javascripts/active_admin/components/jquery.aa.checkbox-toggler.js.coffee", "app/assets/javascripts/active_admin/components/jquery.aa.table-checkbox-toggler.js.coffee", "app/assets/javascripts/active_admin/lib/namespace.js.coffee", "app/assets/javascripts/active_admin/pages/application.js.coffee", "app/assets/javascripts/active_admin/pages/batch_actions.js.coffee", "app/assets/stylesheets/active_admin/_base.css.scss", "app/assets/stylesheets/active_admin/_forms.css.scss", "app/assets/stylesheets/active_admin/_header.css.scss", "app/assets/stylesheets/active_admin/_mixins.css.scss", "app/assets/stylesheets/active_admin/_typography.css.scss", "app/assets/stylesheets/active_admin/components/_batch_actions.css.scss", "app/assets/stylesheets/active_admin/components/_blank_slates.scss", "app/assets/stylesheets/active_admin/components/_breadcrumbs.scss", "app/assets/stylesheets/active_admin/components/_buttons.scss", "app/assets/stylesheets/active_admin/components/_columns.scss", "app/assets/stylesheets/active_admin/components/_comments.css.scss", "app/assets/stylesheets/active_admin/components/_dropdown_menu.scss", "app/assets/stylesheets/active_admin/components/_flash_messages.css.scss", "app/assets/stylesheets/active_admin/components/_grid.scss", "app/assets/stylesheets/active_admin/components/_links.scss", "app/assets/stylesheets/active_admin/components/_pagination.scss", "app/assets/stylesheets/active_admin/components/_panels.scss", "app/assets/stylesheets/active_admin/components/_popovers.css.scss", "app/assets/stylesheets/active_admin/components/_scopes.scss", "app/assets/stylesheets/active_admin/components/_status_tags.scss", "app/assets/stylesheets/active_admin/components/_table_tools.css.scss", "app/assets/stylesheets/active_admin/components/_tables.css.scss", "app/assets/stylesheets/active_admin/mixins/_all.css.scss", "app/assets/stylesheets/active_admin/mixins/_buttons.css.scss", "app/assets/stylesheets/active_admin/mixins/_gradients.css.scss", "app/assets/stylesheets/active_admin/mixins/_icons.css.scss", "app/assets/stylesheets/active_admin/mixins/_reset.css.scss", "app/assets/stylesheets/active_admin/mixins/_rounded.css.scss", "app/assets/stylesheets/active_admin/mixins/_sections.css.scss", "app/assets/stylesheets/active_admin/mixins/_shadows.css.scss", "app/assets/stylesheets/active_admin/mixins/_typography.scss", "app/assets/stylesheets/active_admin/mixins/_utilities.scss", "app/assets/stylesheets/active_admin/mixins/_variables.css.scss", "app/assets/stylesheets/active_admin/pages/_dashboard.scss", "app/assets/stylesheets/active_admin/pages/_logged_out.scss", "app/assets/stylesheets/active_admin/print.css.scss", "app/assets/stylesheets/active_admin/structure/_title_bar.scss", "app/assets/stylesheets/active_admin/themes/_default.css.scss", "app/assets/stylesheets/active_admin/themes/_twitter_bootstrap.css.scss", "app/assets/stylesheets/active_admin/themes/default/_index_tables.css.scss", "app/assets/stylesheets/active_admin/themes/default/_title_bar.css.scss", "app/assets/stylesheets/active_admin/themes/default/_variables.css.scss", "app/assets/stylesheets/active_admin/themes/twitter_bootstrap/_header.css.scss", "app/assets/stylesheets/active_admin/themes/twitter_bootstrap/components/_comments.css.scss", "app/assets/stylesheets/active_admin/themes/twitter_bootstrap/components/_datepicker.css.scss", "app/assets/stylesheets/active_admin/themes/twitter_bootstrap/components/_scopes.css.scss", "app/assets/stylesheets/active_admin/themes/twitter_bootstrap/components/_status_tags.scss", "app/assets/stylesheets/active_admin/themes/twitter_bootstrap/components/_tables.css.scss", "app/assets/stylesheets/active_admin/themes/twitter_bootstrap/pages/_logged_out.scss", "app/views/active_admin/dashboard/index.html.arb", "app/views/active_admin/devise/mailer/reset_password_instructions.html.erb", "app/views/active_admin/devise/mailer/unlock_instructions.html.erb", "app/views/active_admin/devise/passwords/edit.html.erb", "app/views/active_admin/devise/passwords/new.html.erb", "app/views/active_admin/devise/sessions/new.html.erb", "app/views/active_admin/devise/shared/_links.erb", "app/views/active_admin/devise/unlocks/new.html.erb", "app/views/active_admin/page/index.html.arb", "app/views/active_admin/resource/edit.html.arb", "app/views/active_admin/resource/index.csv.erb", "app/views/active_admin/resource/index.html.arb", "app/views/active_admin/resource/new.html.arb", "app/views/active_admin/resource/show.html.arb", "app/views/kaminari/bootstrap/_first_page.html.erb", "app/views/kaminari/bootstrap/_gap.html.erb", "app/views/kaminari/bootstrap/_last_page.html.erb", "app/views/kaminari/bootstrap/_next_page.html.erb", "app/views/kaminari/bootstrap/_page.html.erb", "app/views/kaminari/bootstrap/_paginator.html.erb", "app/views/kaminari/bootstrap/_prev_page.html.erb", "app/views/layouts/active_admin.html.arb", "app/views/layouts/active_admin_logged_out.html.erb", "cucumber.yml", "docs/0-installation.md", "docs/1-general-configuration.md", "docs/10-custom-pages.md", "docs/11-decorators.md", "docs/12-arbre-components.md", "docs/13-authorization-adapter.md", "docs/2-resource-customization.md", "docs/3-index-pages.md", "docs/3-index-pages/index-as-block.md", "docs/3-index-pages/index-as-blog.md", "docs/3-index-pages/index-as-grid.md", "docs/3-index-pages/index-as-table.md", "docs/4-csv-format.md", "docs/5-forms.md", "docs/6-show-screens.md", "docs/7-sidebars.md", "docs/8-custom-actions.md", "docs/9-batch-actions.md", "features/action_item.feature", "features/authorization.feature", "features/authorization_cancan.feature", "features/belongs_to.feature", "features/breadcrumb.feature", "features/comments/commenting.feature", "features/comments/viewing_index.feature", "features/dashboard.feature", "features/decorators.feature", "features/development_reloading.feature", "features/edit_page.feature", "features/first_boot.feature", "features/global_navigation.feature", "features/i18n.feature", "features/index/batch_actions.feature", "features/index/filters.feature", "features/index/format_as_csv.feature", "features/index/formats.feature", "features/index/index_as_block.feature", "features/index/index_as_blog.feature", "features/index/index_as_grid.feature", "features/index/index_as_table.feature", "features/index/index_blank_slate.feature", "features/index/index_parameters.feature", "features/index/index_scope_to.feature", "features/index/index_scopes.feature", "features/index/page_title.feature", "features/index/pagination.feature", "features/menu.feature", "features/new_page.feature", "features/registering_assets.feature", "features/registering_pages.feature", "features/registering_resources.feature", "features/root_to.feature", "features/show/default_content.feature", "features/show/page_title.feature", "features/sidebar_sections.feature", "features/site_title.feature", "features/specifying_actions.feature", "features/step_definitions/action_item_steps.rb", "features/step_definitions/action_link_steps.rb", "features/step_definitions/additional_web_steps.rb", "features/step_definitions/asset_steps.rb", "features/step_definitions/attribute_steps.rb", "features/step_definitions/batch_action_steps.rb", "features/step_definitions/breadcrumb_steps.rb", "features/step_definitions/comment_steps.rb", "features/step_definitions/configuration_steps.rb", "features/step_definitions/dashboard_steps.rb", "features/step_definitions/factory_steps.rb", "features/step_definitions/filter_steps.rb", "features/step_definitions/flash_steps.rb", "features/step_definitions/format_steps.rb", "features/step_definitions/i18n_steps.rb", "features/step_definitions/index_scope_steps.rb", "features/step_definitions/layout_steps.rb", "features/step_definitions/member_link_steps.rb", "features/step_definitions/menu_steps.rb", "features/step_definitions/pagination_steps.rb", "features/step_definitions/sidebar_steps.rb", "features/step_definitions/site_title_steps.rb", "features/step_definitions/tab_steps.rb", "features/step_definitions/table_steps.rb", "features/step_definitions/user_steps.rb", "features/step_definitions/web_steps.rb", "features/sti_resource.feature", "features/support/env.rb", "features/support/paths.rb", "features/support/selectors.rb", "features/users/logging_in.feature", "features/users/logging_out.feature", "features/users/resetting_password.feature", "lib/active_admin.rb", "lib/active_admin/abstract_view_factory.rb", "lib/active_admin/application.rb", "lib/active_admin/asset_registration.rb", "lib/active_admin/authorization_adapter.rb", "lib/active_admin/base_controller.rb", "lib/active_admin/base_controller/authorization.rb", "lib/active_admin/base_controller/menu.rb", "lib/active_admin/batch_actions.rb", "lib/active_admin/batch_actions/controller.rb", "lib/active_admin/batch_actions/resource_extension.rb", "lib/active_admin/batch_actions/views/batch_action_form.rb", "lib/active_admin/batch_actions/views/batch_action_selector.rb", "lib/active_admin/batch_actions/views/selection_cells.rb", "lib/active_admin/callbacks.rb", "lib/active_admin/cancan_adapter.rb", "lib/active_admin/comments.rb", "lib/active_admin/comments/comment.rb", "lib/active_admin/comments/namespace_helper.rb", "lib/active_admin/comments/resource_helper.rb", "lib/active_admin/comments/show_page_helper.rb", "lib/active_admin/comments/views.rb", "lib/active_admin/comments/views/active_admin_comment.rb", "lib/active_admin/comments/views/active_admin_comments.rb", "lib/active_admin/component.rb", "lib/active_admin/controller_action.rb", "lib/active_admin/csv_builder.rb", "lib/active_admin/dashboards.rb", "lib/active_admin/dashboards/dashboard_controller.rb", "lib/active_admin/dashboards/section.rb", "lib/active_admin/dependency_checker.rb", "lib/active_admin/deprecation.rb", "lib/active_admin/devise.rb", "lib/active_admin/dsl.rb", "lib/active_admin/engine.rb", "lib/active_admin/event.rb", "lib/active_admin/filters.rb", "lib/active_admin/filters/dsl.rb", "lib/active_admin/filters/forms.rb", "lib/active_admin/filters/resource_extension.rb", "lib/active_admin/form_builder.rb", "lib/active_admin/helpers/collection.rb", "lib/active_admin/helpers/optional_display.rb", "lib/active_admin/helpers/scope_chain.rb", "lib/active_admin/helpers/settings.rb", "lib/active_admin/iconic.rb", "lib/active_admin/iconic/icons.rb", "lib/active_admin/inputs.rb", "lib/active_admin/inputs/datepicker_input.rb", "lib/active_admin/inputs/filter_base.rb", "lib/active_admin/inputs/filter_boolean_input.rb", "lib/active_admin/inputs/filter_check_boxes_input.rb", "lib/active_admin/inputs/filter_date_range_input.rb", "lib/active_admin/inputs/filter_numeric_input.rb", "lib/active_admin/inputs/filter_select_input.rb", "lib/active_admin/inputs/filter_string_input.rb", "lib/active_admin/locales/bg.yml", "lib/active_admin/locales/ca.yml", "lib/active_admin/locales/cs.yml", "lib/active_admin/locales/da.yml", "lib/active_admin/locales/de.yml", "lib/active_admin/locales/en.yml", "lib/active_admin/locales/es.yml", "lib/active_admin/locales/fr.yml", "lib/active_admin/locales/he.yml", "lib/active_admin/locales/hr.yml", "lib/active_admin/locales/hu.yml", "lib/active_admin/locales/it.yml", "lib/active_admin/locales/ja.yml", "lib/active_admin/locales/ko.yml", "lib/active_admin/locales/lt.yml", "lib/active_admin/locales/lv.yml", "lib/active_admin/locales/nl.yml", "lib/active_admin/locales/no-NB.yml", "lib/active_admin/locales/pl.yml", "lib/active_admin/locales/pt-BR.yml", "lib/active_admin/locales/ro.yml", "lib/active_admin/locales/ru.yml", "lib/active_admin/locales/sv-SE.yml", "lib/active_admin/locales/tr.yml", "lib/active_admin/locales/vi.yml", "lib/active_admin/locales/zh-CN.yml", "lib/active_admin/locales/zh-TW.yml", "lib/active_admin/menu.rb", "lib/active_admin/menu_collection.rb", "lib/active_admin/menu_item.rb", "lib/active_admin/namespace.rb", "lib/active_admin/page.rb", "lib/active_admin/page_controller.rb", "lib/active_admin/page_dsl.rb", "lib/active_admin/page_presenter.rb", "lib/active_admin/reloader.rb", "lib/active_admin/resource.rb", "lib/active_admin/resource/action_items.rb", "lib/active_admin/resource/belongs_to.rb", "lib/active_admin/resource/controllers.rb", "lib/active_admin/resource/menu.rb", "lib/active_admin/resource/naming.rb", "lib/active_admin/resource/page_presenters.rb", "lib/active_admin/resource/pagination.rb", "lib/active_admin/resource/routes.rb", "lib/active_admin/resource/scopes.rb", "lib/active_admin/resource/sidebars.rb", "lib/active_admin/resource_collection.rb", "lib/active_admin/resource_controller.rb", "lib/active_admin/resource_controller/action_builder.rb", "lib/active_admin/resource_controller/actions.rb", "lib/active_admin/resource_controller/data_access.rb", "lib/active_admin/resource_controller/decorators.rb", "lib/active_admin/resource_controller/resource_class_methods.rb", "lib/active_admin/resource_controller/scoping.rb", "lib/active_admin/resource_controller/sidebars.rb", "lib/active_admin/resource_dsl.rb", "lib/active_admin/router.rb", "lib/active_admin/sass/active_admin.scss", "lib/active_admin/sass/css_loader.rb", "lib/active_admin/sass/helpers.rb", "lib/active_admin/scope.rb", "lib/active_admin/sidebar_section.rb", "lib/active_admin/version.rb", "lib/active_admin/view_factory.rb", "lib/active_admin/view_helpers.rb", "lib/active_admin/view_helpers/active_admin_application_helper.rb", "lib/active_admin/view_helpers/assigns_with_indifferent_access_helper.rb", "lib/active_admin/view_helpers/auto_link_helper.rb", "lib/active_admin/view_helpers/breadcrumb_helper.rb", "lib/active_admin/view_helpers/display_helper.rb", "lib/active_admin/view_helpers/download_format_links_helper.rb", "lib/active_admin/view_helpers/fields_for.rb", "lib/active_admin/view_helpers/flash_helper.rb", "lib/active_admin/view_helpers/form_helper.rb", "lib/active_admin/view_helpers/icon_helper.rb", "lib/active_admin/view_helpers/method_or_proc_helper.rb", "lib/active_admin/view_helpers/sidebar_helper.rb", "lib/active_admin/view_helpers/title_helper.rb", "lib/active_admin/view_helpers/view_factory_helper.rb", "lib/active_admin/views.rb", "lib/active_admin/views/action_items.rb", "lib/active_admin/views/components/attributes_table.rb", "lib/active_admin/views/components/blank_slate.rb", "lib/active_admin/views/components/columns.rb", "lib/active_admin/views/components/dropdown_menu.rb", "lib/active_admin/views/components/paginated_collection.rb", "lib/active_admin/views/components/panel.rb", "lib/active_admin/views/components/scopes.rb", "lib/active_admin/views/components/sidebar_section.rb", "lib/active_admin/views/components/site_title.rb", "lib/active_admin/views/components/status_tag.rb", "lib/active_admin/views/components/table_for.rb", "lib/active_admin/views/dashboard_section_renderer.rb", "lib/active_admin/views/footer.rb", "lib/active_admin/views/header.rb", "lib/active_admin/views/index_as_block.rb", "lib/active_admin/views/index_as_blog.rb", "lib/active_admin/views/index_as_grid.rb", "lib/active_admin/views/index_as_table.rb", "lib/active_admin/views/pages/base.rb", "lib/active_admin/views/pages/dashboard.rb", "lib/active_admin/views/pages/form.rb", "lib/active_admin/views/pages/index.rb", "lib/active_admin/views/pages/layout.rb", "lib/active_admin/views/pages/page.rb", "lib/active_admin/views/pages/show.rb", "lib/active_admin/views/tabbed_navigation.rb", "lib/active_admin/views/title_bar.rb", "lib/active_admin/views/utility_nav.rb", "lib/activeadmin.rb", "lib/generators/active_admin/assets/assets_generator.rb", "lib/generators/active_admin/assets/templates/3.0/active_admin.js", "lib/generators/active_admin/assets/templates/3.1/active_admin.css.scss", "lib/generators/active_admin/assets/templates/3.1/active_admin.js", "lib/generators/active_admin/devise/devise_generator.rb", "lib/generators/active_admin/install/install_generator.rb", "lib/generators/active_admin/install/templates/active_admin.rb.erb", "lib/generators/active_admin/install/templates/admin_user.rb.erb", "lib/generators/active_admin/install/templates/dashboard.rb", "lib/generators/active_admin/install/templates/migrations/1_create_admin_notes.rb", "lib/generators/active_admin/install/templates/migrations/2_move_admin_notes_to_comments.rb", "lib/generators/active_admin/resource/resource_generator.rb", "lib/generators/active_admin/resource/templates/admin.rb", "script/local", "script/use_rails", "spec/integration/default_namespace.rb", "spec/integration/javascript_spec.rb", "spec/integration/memory_spec.rb", "spec/integration/stylesheets_spec.rb", "spec/javascripts/coffeescripts/jquery.aa.checkbox-toggler-spec.js.coffee", "spec/javascripts/coffeescripts/jquery.aa.table-checkbox-toggler-spec.js.coffee", "spec/javascripts/compiled/jquery.aa.checkbox-toggler-spec.js", "spec/javascripts/compiled/jquery.aa.popover-spec.js", "spec/javascripts/compiled/jquery.aa.table-checkbox-toggler-spec.js", "spec/javascripts/fixtures/checkboxes.html", "spec/javascripts/fixtures/table_checkboxes.html", "spec/javascripts/helpers/SpecHelper.js", "spec/javascripts/helpers/vendor/jasmine-fixture-0.0.5.js", "spec/javascripts/helpers/vendor/jasmine-jquery.js", "spec/javascripts/helpers/vendor/sinon-1.2.0.js", "spec/javascripts/support/jasmine.yml", "spec/javascripts/support/jasmine_config.rb", "spec/javascripts/support/jasmine_runner.rb", "spec/javascripts/support/jquery-ui-1.8.16.custom.min.js", "spec/javascripts/support/jquery.min.js", "spec/spec_helper.rb", "spec/spec_helper_without_rails.rb", "spec/support/detect_rails_version.rb", "spec/support/integration_example_group.rb", "spec/support/jslint.yml", "spec/support/rails_template.rb", "spec/support/rails_template_with_data.rb", "spec/support/templates/admin/stores.rb", "spec/support/templates/cucumber.rb", "spec/support/templates/cucumber_with_reloading.rb", "spec/support/templates/en.yml", "spec/support/templates/post_decorator.rb", "spec/unit/abstract_view_factory_spec.rb", "spec/unit/action_builder_spec.rb", "spec/unit/active_admin_spec.rb", "spec/unit/application_spec.rb", "spec/unit/asset_registration_spec.rb", "spec/unit/authorization/authorization_adapter_spec.rb", "spec/unit/authorization/controller_authorization_spec.rb", "spec/unit/auto_link_spec.rb", "spec/unit/base_controller_spec.rb", "spec/unit/batch_actions/resource_spec.rb", "spec/unit/batch_actions/settings_spec.rb", "spec/unit/belongs_to_spec.rb", "spec/unit/breadcrumbs_spec.rb", "spec/unit/cancan_adapter_spec.rb", "spec/unit/comments_spec.rb", "spec/unit/component_spec.rb", "spec/unit/config_shared_examples.rb", "spec/unit/controller_filters_spec.rb", "spec/unit/csv_builder_spec.rb", "spec/unit/dashboard_controller_spec.rb", "spec/unit/dashboard_section_spec.rb", "spec/unit/dashboards_spec.rb", "spec/unit/devise_spec.rb", "spec/unit/display_name_spec.rb", "spec/unit/dsl_spec.rb", "spec/unit/event_spec.rb", "spec/unit/filters/filter_form_builder_spec.rb", "spec/unit/filters/resource_spec.rb", "spec/unit/form_builder_spec.rb", "spec/unit/generators/install_rails_3_1_spec.rb", "spec/unit/helpers/collection_spec.rb", "spec/unit/helpers/scope_chain_spec.rb", "spec/unit/helpers/settings_spec.rb", "spec/unit/menu_collection_spec.rb", "spec/unit/menu_item_spec.rb", "spec/unit/menu_spec.rb", "spec/unit/namespace/authorization_spec.rb", "spec/unit/namespace/register_page_spec.rb", "spec/unit/namespace/register_resource_spec.rb", "spec/unit/namespace_spec.rb", "spec/unit/page_controller_spec.rb", "spec/unit/page_spec.rb", "spec/unit/pretty_format_spec.rb", "spec/unit/rails_spec.rb", "spec/unit/reloader_spec.rb", "spec/unit/resource/action_items_spec.rb", "spec/unit/resource/menu_spec.rb", "spec/unit/resource/naming_spec.rb", "spec/unit/resource/page_presenters_spec.rb", "spec/unit/resource/pagination_spec.rb", "spec/unit/resource/routes_spec.rb", "spec/unit/resource/scopes_spec.rb", "spec/unit/resource/sidebars_spec.rb", "spec/unit/resource_collection_spec.rb", "spec/unit/resource_controller/data_access_spec.rb", "spec/unit/resource_controller/sidebars_spec.rb", "spec/unit/resource_controller_spec.rb", "spec/unit/resource_registration_spec.rb", "spec/unit/resource_spec.rb", "spec/unit/routing_spec.rb", "spec/unit/sass/helpers_spec.rb", "spec/unit/scope_spec.rb", "spec/unit/view_factory_spec.rb", "spec/unit/view_helpers/download_format_links_helper_spec.rb", "spec/unit/view_helpers/fields_for_spec.rb", "spec/unit/view_helpers/form_helper_spec.rb", "spec/unit/view_helpers/method_or_proc_helper_spec.rb", "spec/unit/views/components/attributes_table_spec.rb", "spec/unit/views/components/blank_slate_spec.rb", "spec/unit/views/components/columns_spec.rb", "spec/unit/views/components/paginated_collection_spec.rb", "spec/unit/views/components/panel_spec.rb", "spec/unit/views/components/sidebar_section_spec.rb", "spec/unit/views/components/site_title_spec.rb", "spec/unit/views/components/status_tag_spec.rb", "spec/unit/views/components/table_for_spec.rb", "spec/unit/views/pages/layout_spec.rb", "spec/unit/views/pages/show_spec.rb", "spec/unit/views/tabbed_navigation_spec.rb", "tasks/docs.rake", "tasks/js.rake", "tasks/parallel_tests.rake", "tasks/test.rake", "tasks/yard.rake"]
  s.homepage = "http://activeadmin.info"
  s.rubygems_version = "2.4.3"
  s.summary = "The administration framework for Ruby on Rails."
  s.test_files = ["features/action_item.feature", "features/authorization.feature", "features/authorization_cancan.feature", "features/belongs_to.feature", "features/breadcrumb.feature", "features/comments/commenting.feature", "features/comments/viewing_index.feature", "features/dashboard.feature", "features/decorators.feature", "features/development_reloading.feature", "features/edit_page.feature", "features/first_boot.feature", "features/global_navigation.feature", "features/i18n.feature", "features/index/batch_actions.feature", "features/index/filters.feature", "features/index/format_as_csv.feature", "features/index/formats.feature", "features/index/index_as_block.feature", "features/index/index_as_blog.feature", "features/index/index_as_grid.feature", "features/index/index_as_table.feature", "features/index/index_blank_slate.feature", "features/index/index_parameters.feature", "features/index/index_scope_to.feature", "features/index/index_scopes.feature", "features/index/page_title.feature", "features/index/pagination.feature", "features/menu.feature", "features/new_page.feature", "features/registering_assets.feature", "features/registering_pages.feature", "features/registering_resources.feature", "features/root_to.feature", "features/show/default_content.feature", "features/show/page_title.feature", "features/sidebar_sections.feature", "features/site_title.feature", "features/specifying_actions.feature", "features/step_definitions/action_item_steps.rb", "features/step_definitions/action_link_steps.rb", "features/step_definitions/additional_web_steps.rb", "features/step_definitions/asset_steps.rb", "features/step_definitions/attribute_steps.rb", "features/step_definitions/batch_action_steps.rb", "features/step_definitions/breadcrumb_steps.rb", "features/step_definitions/comment_steps.rb", "features/step_definitions/configuration_steps.rb", "features/step_definitions/dashboard_steps.rb", "features/step_definitions/factory_steps.rb", "features/step_definitions/filter_steps.rb", "features/step_definitions/flash_steps.rb", "features/step_definitions/format_steps.rb", "features/step_definitions/i18n_steps.rb", "features/step_definitions/index_scope_steps.rb", "features/step_definitions/layout_steps.rb", "features/step_definitions/member_link_steps.rb", "features/step_definitions/menu_steps.rb", "features/step_definitions/pagination_steps.rb", "features/step_definitions/sidebar_steps.rb", "features/step_definitions/site_title_steps.rb", "features/step_definitions/tab_steps.rb", "features/step_definitions/table_steps.rb", "features/step_definitions/user_steps.rb", "features/step_definitions/web_steps.rb", "features/sti_resource.feature", "features/support/env.rb", "features/support/paths.rb", "features/support/selectors.rb", "features/users/logging_in.feature", "features/users/logging_out.feature", "features/users/resetting_password.feature", "spec/integration/default_namespace.rb", "spec/integration/javascript_spec.rb", "spec/integration/memory_spec.rb", "spec/integration/stylesheets_spec.rb", "spec/javascripts/coffeescripts/jquery.aa.checkbox-toggler-spec.js.coffee", "spec/javascripts/coffeescripts/jquery.aa.table-checkbox-toggler-spec.js.coffee", "spec/javascripts/compiled/jquery.aa.checkbox-toggler-spec.js", "spec/javascripts/compiled/jquery.aa.popover-spec.js", "spec/javascripts/compiled/jquery.aa.table-checkbox-toggler-spec.js", "spec/javascripts/fixtures/checkboxes.html", "spec/javascripts/fixtures/table_checkboxes.html", "spec/javascripts/helpers/SpecHelper.js", "spec/javascripts/helpers/vendor/jasmine-fixture-0.0.5.js", "spec/javascripts/helpers/vendor/jasmine-jquery.js", "spec/javascripts/helpers/vendor/sinon-1.2.0.js", "spec/javascripts/support/jasmine.yml", "spec/javascripts/support/jasmine_config.rb", "spec/javascripts/support/jasmine_runner.rb", "spec/javascripts/support/jquery-ui-1.8.16.custom.min.js", "spec/javascripts/support/jquery.min.js", "spec/spec_helper.rb", "spec/spec_helper_without_rails.rb", "spec/support/detect_rails_version.rb", "spec/support/integration_example_group.rb", "spec/support/jslint.yml", "spec/support/rails_template.rb", "spec/support/rails_template_with_data.rb", "spec/support/templates/admin/stores.rb", "spec/support/templates/cucumber.rb", "spec/support/templates/cucumber_with_reloading.rb", "spec/support/templates/en.yml", "spec/support/templates/post_decorator.rb", "spec/unit/abstract_view_factory_spec.rb", "spec/unit/action_builder_spec.rb", "spec/unit/active_admin_spec.rb", "spec/unit/application_spec.rb", "spec/unit/asset_registration_spec.rb", "spec/unit/authorization/authorization_adapter_spec.rb", "spec/unit/authorization/controller_authorization_spec.rb", "spec/unit/auto_link_spec.rb", "spec/unit/base_controller_spec.rb", "spec/unit/batch_actions/resource_spec.rb", "spec/unit/batch_actions/settings_spec.rb", "spec/unit/belongs_to_spec.rb", "spec/unit/breadcrumbs_spec.rb", "spec/unit/cancan_adapter_spec.rb", "spec/unit/comments_spec.rb", "spec/unit/component_spec.rb", "spec/unit/config_shared_examples.rb", "spec/unit/controller_filters_spec.rb", "spec/unit/csv_builder_spec.rb", "spec/unit/dashboard_controller_spec.rb", "spec/unit/dashboard_section_spec.rb", "spec/unit/dashboards_spec.rb", "spec/unit/devise_spec.rb", "spec/unit/display_name_spec.rb", "spec/unit/dsl_spec.rb", "spec/unit/event_spec.rb", "spec/unit/filters/filter_form_builder_spec.rb", "spec/unit/filters/resource_spec.rb", "spec/unit/form_builder_spec.rb", "spec/unit/generators/install_rails_3_1_spec.rb", "spec/unit/helpers/collection_spec.rb", "spec/unit/helpers/scope_chain_spec.rb", "spec/unit/helpers/settings_spec.rb", "spec/unit/menu_collection_spec.rb", "spec/unit/menu_item_spec.rb", "spec/unit/menu_spec.rb", "spec/unit/namespace/authorization_spec.rb", "spec/unit/namespace/register_page_spec.rb", "spec/unit/namespace/register_resource_spec.rb", "spec/unit/namespace_spec.rb", "spec/unit/page_controller_spec.rb", "spec/unit/page_spec.rb", "spec/unit/pretty_format_spec.rb", "spec/unit/rails_spec.rb", "spec/unit/reloader_spec.rb", "spec/unit/resource/action_items_spec.rb", "spec/unit/resource/menu_spec.rb", "spec/unit/resource/naming_spec.rb", "spec/unit/resource/page_presenters_spec.rb", "spec/unit/resource/pagination_spec.rb", "spec/unit/resource/routes_spec.rb", "spec/unit/resource/scopes_spec.rb", "spec/unit/resource/sidebars_spec.rb", "spec/unit/resource_collection_spec.rb", "spec/unit/resource_controller/data_access_spec.rb", "spec/unit/resource_controller/sidebars_spec.rb", "spec/unit/resource_controller_spec.rb", "spec/unit/resource_registration_spec.rb", "spec/unit/resource_spec.rb", "spec/unit/routing_spec.rb", "spec/unit/sass/helpers_spec.rb", "spec/unit/scope_spec.rb", "spec/unit/view_factory_spec.rb", "spec/unit/view_helpers/download_format_links_helper_spec.rb", "spec/unit/view_helpers/fields_for_spec.rb", "spec/unit/view_helpers/form_helper_spec.rb", "spec/unit/view_helpers/method_or_proc_helper_spec.rb", "spec/unit/views/components/attributes_table_spec.rb", "spec/unit/views/components/blank_slate_spec.rb", "spec/unit/views/components/columns_spec.rb", "spec/unit/views/components/paginated_collection_spec.rb", "spec/unit/views/components/panel_spec.rb", "spec/unit/views/components/sidebar_section_spec.rb", "spec/unit/views/components/site_title_spec.rb", "spec/unit/views/components/status_tag_spec.rb", "spec/unit/views/components/table_for_spec.rb", "spec/unit/views/pages/layout_spec.rb", "spec/unit/views/pages/show_spec.rb", "spec/unit/views/tabbed_navigation_spec.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 1.0.0"])
      s.add_runtime_dependency(%q<bourbon>, [">= 1.0.0"])
      s.add_runtime_dependency(%q<meta_search>, [">= 0.9.2"])
      s.add_runtime_dependency(%q<devise>, [">= 1.1.2"])
      s.add_runtime_dependency(%q<formtastic>, [">= 2.0.0"])
      s.add_runtime_dependency(%q<inherited_resources>, [">= 1.3.1"])
      s.add_runtime_dependency(%q<kaminari>, [">= 0.13.0"])
      s.add_runtime_dependency(%q<sass>, [">= 3.1.0"])
      s.add_runtime_dependency(%q<fastercsv>, [">= 0"])
      s.add_runtime_dependency(%q<arbre>, [">= 1.0.1"])
    else
      s.add_dependency(%q<rails>, [">= 3.0.0"])
      s.add_dependency(%q<jquery-rails>, [">= 1.0.0"])
      s.add_dependency(%q<bourbon>, [">= 1.0.0"])
      s.add_dependency(%q<meta_search>, [">= 0.9.2"])
      s.add_dependency(%q<devise>, [">= 1.1.2"])
      s.add_dependency(%q<formtastic>, [">= 2.0.0"])
      s.add_dependency(%q<inherited_resources>, [">= 1.3.1"])
      s.add_dependency(%q<kaminari>, [">= 0.13.0"])
      s.add_dependency(%q<sass>, [">= 3.1.0"])
      s.add_dependency(%q<fastercsv>, [">= 0"])
      s.add_dependency(%q<arbre>, [">= 1.0.1"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.0.0"])
    s.add_dependency(%q<jquery-rails>, [">= 1.0.0"])
    s.add_dependency(%q<bourbon>, [">= 1.0.0"])
    s.add_dependency(%q<meta_search>, [">= 0.9.2"])
    s.add_dependency(%q<devise>, [">= 1.1.2"])
    s.add_dependency(%q<formtastic>, [">= 2.0.0"])
    s.add_dependency(%q<inherited_resources>, [">= 1.3.1"])
    s.add_dependency(%q<kaminari>, [">= 0.13.0"])
    s.add_dependency(%q<sass>, [">= 3.1.0"])
    s.add_dependency(%q<fastercsv>, [">= 0"])
    s.add_dependency(%q<arbre>, [">= 1.0.1"])
  end
end