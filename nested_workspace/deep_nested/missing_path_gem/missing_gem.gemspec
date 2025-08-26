Gem::Specification.new do |spec|
  spec.name = "missing_path_gem"
  spec.version = "1.0.0"
  
  # This gemspec exists in a missing path, creating vulnerability
  spec.add_dependency "path_based_missing_dep_dc"
  spec.add_dependency "local_gemspec_fake_dep"
end
