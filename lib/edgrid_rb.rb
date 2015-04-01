require "edgrid_rb/version"
require "edgrid_rb/my_edgrid_helper"
require 'rails'
require 'active_support/core_ext/numeric/time'
require 'active_support/dependencies'
module EdgridRb
  class Engine < ::Rails::Engine
  	initializer "my_gem.include_view_helpers" do |app|
      ActiveSupport.on_load :action_view do
        include MyEdgridHelper
      end
    end
  end
end
