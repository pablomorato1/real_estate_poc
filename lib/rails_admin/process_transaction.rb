# frozen_string_literal: true

module RailsAdmin
  module Config
    module Actions
      class ProcessTransaction < RailsAdmin::Config::Actions::Base
        # This ensures the action only shows up for Users
        register_instance_option :visible? do
          authorized? && bindings[:object].instance_of?(Transaction) && bindings[:object].on_hold?
        end
        # We want the action on members, not the Users collection
        register_instance_option :member do
          true
        end
        register_instance_option :link_icon do
          'fa fa-cogs'
        end
        # You may or may not want pjax for your action
        register_instance_option :pjax? do
          false
        end

        register_instance_option :controller do
          proc do
            @object.process!
            redirect_to(back_or_index)
          end
        end
      end
    end
  end
end
