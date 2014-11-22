module Capumaginx

  module Generators
    class ConfigGenerator < Rails::Generators::Base
      desc "Create local nginx, puma, and monit configuration files for customization"
      source_root File.expand_path('../templates', __FILE__)
      argument :templates_path, :type => :string,
        :default => "config/deploy/templates",
        :banner => "path to templates"

      def copy_template
        copy_file "../../../capumaginx/templates/puma_conf.erb", "#{templates_path}/puma_conf.erb"
        copy_file "../../../capumaginx/templates/puma_monit.erb", "#{templates_path}/puma_monit.erb"
        copy_file "../../../capumaginx/templates/nginx_conf.erb", "#{templates_path}/nginx_conf.erb"
        copy_file "../../../capumaginx/templates/systemd_service.erb", "#{templates_path}/systemd_service.erb"
      end
    end

  end

end
