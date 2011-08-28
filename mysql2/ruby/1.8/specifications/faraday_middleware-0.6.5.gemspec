# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{faraday_middleware}
  s.version = "0.6.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Erik Michaels-Ober}, %q{Wynn Netherland}]
  s.date = %q{2011-06-22}
  s.description = %q{Various middleware for Faraday}
  s.email = [%q{sferik@gmail.com}, %q{wynn.netherland@gmail.com}]
  s.homepage = %q{https://github.com/pengwynn/faraday_middleware}
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.5}
  s.summary = %q{Various middleware for Faraday}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, ["~> 0.6.0"])
      s.add_development_dependency(%q<rake>, ["~> 0.9"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.4"])
      s.add_development_dependency(%q<rash>, ["~> 0.3"])
      s.add_development_dependency(%q<json_pure>, ["~> 1.5"])
      s.add_development_dependency(%q<multi_json>, ["~> 1.0"])
      s.add_development_dependency(%q<multi_xml>, ["~> 0.2"])
      s.add_development_dependency(%q<oauth2>, ["~> 0.2"])
      s.add_development_dependency(%q<simple_oauth>, ["~> 0.1"])
    else
      s.add_dependency(%q<faraday>, ["~> 0.6.0"])
      s.add_dependency(%q<rake>, ["~> 0.9"])
      s.add_dependency(%q<rspec>, ["~> 2.6"])
      s.add_dependency(%q<simplecov>, ["~> 0.4"])
      s.add_dependency(%q<rash>, ["~> 0.3"])
      s.add_dependency(%q<json_pure>, ["~> 1.5"])
      s.add_dependency(%q<multi_json>, ["~> 1.0"])
      s.add_dependency(%q<multi_xml>, ["~> 0.2"])
      s.add_dependency(%q<oauth2>, ["~> 0.2"])
      s.add_dependency(%q<simple_oauth>, ["~> 0.1"])
    end
  else
    s.add_dependency(%q<faraday>, ["~> 0.6.0"])
    s.add_dependency(%q<rake>, ["~> 0.9"])
    s.add_dependency(%q<rspec>, ["~> 2.6"])
    s.add_dependency(%q<simplecov>, ["~> 0.4"])
    s.add_dependency(%q<rash>, ["~> 0.3"])
    s.add_dependency(%q<json_pure>, ["~> 1.5"])
    s.add_dependency(%q<multi_json>, ["~> 1.0"])
    s.add_dependency(%q<multi_xml>, ["~> 0.2"])
    s.add_dependency(%q<oauth2>, ["~> 0.2"])
    s.add_dependency(%q<simple_oauth>, ["~> 0.1"])
  end
end
