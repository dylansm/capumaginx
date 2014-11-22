namespace :puma do
  def puma_template(from, to, role)
    [
        "lib/capistrano/templates/#{from}-#{role.hostname}-#{fetch(:stage)}.rb",
        "lib/capistrano/templates/#{from}-#{role.hostname}.rb",
        "lib/capistrano/templates/#{from}-#{fetch(:stage)}.rb",
        "lib/capistrano/templates/#{from}.rb.erb",
        "lib/capistrano/templates/#{from}.rb",
        "lib/capistrano/templates/#{from}.erb",
        "config/deploy/templates/#{from}.rb.erb",
        "config/deploy/templates/#{from}.rb",
        "config/deploy/templates/#{from}.erb",
        File.expand_path("../../templates/#{from}.rb.erb", __FILE__),
        File.expand_path("../../templates/#{from}.erb", __FILE__)
    ].each do |path|
      if File.file?(path)
        erb = File.read(path)
        upload! StringIO.new(ERB.new(erb).result(binding)), to
        break
      end
    end
  end
end
