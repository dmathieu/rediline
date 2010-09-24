# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rediline}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Damien MATHIEU"]
  s.date = %q{2010-09-24}
  s.description = %q{Timeline library}
  s.email = %q{42@dmathieu.com}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".gitignore",
     ".rvmrc",
     "Gemfile",
     "Gemfile.lock",
     "README.md",
     "Rakefile",
     "VERSION",
     "init.rb",
     "lib/rediline.rb",
     "lib/rediline/entry.rb",
     "lib/rediline/object.rb",
     "lib/rediline/redis.rb",
     "lib/rediline/timeline.rb",
     "lib/rediline/timeline/user.rb",
     "lib/rediline/user.rb",
     "rediline.gemspec",
     "spec/entry_spec.rb",
     "spec/object_spec.rb",
     "spec/redis_spec.rb",
     "spec/spec_helper.rb",
     "spec/support/timeline.rb",
     "spec/support/timeline_owner.rb",
     "spec/support/user.rb",
     "spec/timeline/user_spec.rb",
     "spec/timeline_spec.rb",
     "spec/user_spec.rb"
  ]
  s.homepage = %q{http://github.com/dmathieu/rediline}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Redis Backed Timeline}
  s.test_files = [
    "spec/entry_spec.rb",
     "spec/object_spec.rb",
     "spec/redis_spec.rb",
     "spec/spec_helper.rb",
     "spec/support/timeline.rb",
     "spec/support/timeline_owner.rb",
     "spec/support/user.rb",
     "spec/timeline/user_spec.rb",
     "spec/timeline_spec.rb",
     "spec/user_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<redis>, ["= 2.0.7"])
      s.add_runtime_dependency(%q<redis-namespace>, ["= 0.10.0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<i18n>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, ["~> 3.0"])
      s.add_runtime_dependency(%q<activemodel>, ["~> 3.0"])
    else
      s.add_dependency(%q<redis>, ["= 2.0.7"])
      s.add_dependency(%q<redis-namespace>, ["= 0.10.0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<activesupport>, ["~> 3.0"])
      s.add_dependency(%q<activemodel>, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<redis>, ["= 2.0.7"])
    s.add_dependency(%q<redis-namespace>, ["= 0.10.0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<activesupport>, ["~> 3.0"])
    s.add_dependency(%q<activemodel>, ["~> 3.0"])
  end
end

