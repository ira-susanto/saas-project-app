env_file = Rails.root.join("config", "local_env.yml")
if File.exist?(env_file)
  YAML.load_file(env_file).each do |key, value|
    ENV[key.to_s] = value
  end
end