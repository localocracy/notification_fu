# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{timeline_fu}
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["James Golick", "Mathieu Martin", "Francois Beausoleil"]
  s.date = %q{2009-06-26}
  s.description = %q{Easily build timelines, much like GitHub's news feed}
  s.email = %q{james@giraffesoft.ca}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "MIT-LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION.yml",
     "generators/notification_fu/USAGE",
     "generators/notification_fu/templates/migration.rb",
     "generators/notification_fu/templates/model.rb",
     "generators/notification_fu/timeline_fu_generator.rb",
     "init.rb",
     "lib/notification_fu.rb",
     "lib/notification_fu/fires.rb",
     "lib/notification_fu/macros.rb",
     "lib/notification_fu/matchers.rb",
     "shoulda_macros/notification_fu_shoulda.rb",
     "test/fires_test.rb",
     "test/test_helper.rb",
     "notification_fu.gemspec"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/localocracy/notification_fu}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Easily build timelines, much like GitHub's news feed}
  s.test_files = [
    "test/fires_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
