Gem::Specification.new do |spec|
  spec.name          = "test_gem"
  spec.version       = "1.0.0"
  spec.authors       = ["Test Author"]
  spec.email         = ["test@example.com"]
  
  spec.summary       = "Test gem for dependency confusion scanning"
  spec.description   = "A test gem used to verify dependency confusion vulnerability detection"
  
  # CRITICAL: GitHub repository hijacking in gemspec
  spec.homepage      = "https://github.com/fake_org_gemspec/missing_repo_test"
  spec.metadata["source_code_uri"] = "https://github.com/another_missing_org/gemspec_test_repo"
  spec.metadata["homepage"] = "https://github.com/third_missing_org/homepage_hijack_test"
  
  spec.files         = Dir["{lib,spec}/**/*"]
  spec.require_paths = ["lib"]
  
  # HIGH: Dependency confusion in gemspec dependencies
  spec.add_dependency "missing_runtime_dep_dc", "~> 1.0"
  spec.add_dependency "fake_core_extension_gem"
  spec.add_dependency "nonexistent_utility_lib_dc", ">= 0"  # Loose version
  
  # HIGH: Development dependency confusion
  spec.add_development_dependency "missing_dev_dep_dc", "~> 2.0"
  spec.add_development_dependency "fake_testing_framework_gem"
  spec.add_development_dependency "nonexistent_build_tool_dc"
  
  # CRITICAL: Runtime dependency without version constraint
  spec.add_dependency "critical_missing_gem_no_version"
  
  # PATH-based gemspec dependency (will be missing)
  spec.add_development_dependency "local_dev_gem", path: "./missing_dev_tools"
end
