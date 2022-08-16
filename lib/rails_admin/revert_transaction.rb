module RailsAdmin
  module Config
    module Actions
      class RevertTransaction < RailsAdmin::Config::Actions::Base
        # This ensures the action only shows up for Users
        register_instance_option :visible? do
          authorized? && bindings[:object].class == Transaction && bindings[:object].processed?
        end
        # We want the action on members, not the Users collection
        register_instance_option :member do
          true
        end
        register_instance_option :link_icon do
          'fa fa-undo'
        end
        # You may or may not want pjax for your action
        register_instance_option :pjax? do
          false
        end

        register_instance_option :controller do
          Proc.new do
            @object.revert!
            redirect_to back_or_index
          end
        end
      end
    end
  end
end
