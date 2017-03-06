# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = "least"
  spec.version       = "0.0.1"
  spec.authors       = ["Adam Lukens", "Josh Greenwood"]
  spec.email         = ["adam@testdouble.com"]

  spec.summary       = %q{A pager that can dynamically filter log lines}
  spec.description   = %q{A pager that can dynamically filter log lines}
  spec.homepage      = "https://github.com/testdouble/least"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "pry", "~> 0.10.4"
  spec.add_development_dependency "pry-nav",  '~> 0.2.4'
  spec.add_development_dependency "pry-stack_explorer", '~> 0.4.9.2'
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end