# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{prawn-qrcode}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Andreas Tarandi}]
  s.date = %q{2011-07-25}
  s.description = %q{Renders a RQRCode in a prawn pdf}
  s.email = %q{torandi@gmail.com}
  s.extra_rdoc_files = [%q{README.rdoc}, %q{lib/prawn-qrcode.rb}]
  s.files = [%q{Manifest}, %q{README.rdoc}, %q{Rakefile}, %q{lib/prawn-qrcode.rb}, %q{prawn-qrcode.gemspec}]
  s.homepage = %q{http://github.com/torandi/prawn-qrcode}
  s.rdoc_options = [%q{--line-numbers}, %q{--inline-source}, %q{--title}, %q{Prawn-qrcode}, %q{--main}, %q{README.rdoc}]
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{prawn-qrcode}
  s.rubygems_version = %q{1.8.5}
  s.summary = %q{Renders a RQRCode in a prawn pdf}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<prawn>, [">= 0"])
      s.add_runtime_dependency(%q<rqrcode>, [">= 0"])
    else
      s.add_dependency(%q<prawn>, [">= 0"])
      s.add_dependency(%q<rqrcode>, [">= 0"])
    end
  else
    s.add_dependency(%q<prawn>, [">= 0"])
    s.add_dependency(%q<rqrcode>, [">= 0"])
  end
end
