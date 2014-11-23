namespace :puma do
  namespace :service do
    def systemd_install
      puma_template 'systemd_service', "#{fetch(:tmp_dir)}/puma" , @role
      execute "chmod +x #{fetch(:tmp_dir)}/puma"
      sudo "mv #{fetch(:tmp_dir)}/puma /etc/init.d/puma"
      sudo 'chkconfig --add puma'
    end
  end
end
