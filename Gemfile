source 'https://rubygems.org'

gem 'rails', '~> 7.0'

# WORKSPACE/PATH DEPENDENCY - Points to nested folder
gem 'nested_workspace_gem', path: './nested_workspace'

# GEMSPEC PATH REFERENCE - Points to nested folder
gemspec path: './nested_workspace'

# HIGH PRIORITY: Regular dependency confusion (package that likely doesn't exist)
gem 'nonexistent_test_gem_12345_dc'

# CRITICAL: GitHub repo hijacking vulnerability
gem 'vulnerable_github_gem', github: 'fake_org_that_does_not_exist/test_repo_missing'

group :development, :test do
  # Path dependency that will be missing
  gem 'missing_dev_gem', path: './missing_dev_path'
  
  # Another non-existent package for testing
  gem 'test_dc_vuln_gem_99999'
end
