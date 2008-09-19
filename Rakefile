require 'rubygems'
require 'rake/rdoctask'
require 'rake/gempackagetask'
require 'spec/rake/spectask'

PKG_NAME = 'r18n'
PKG_VERSION = '0.1'

##############################################################################
# Tests
##############################################################################

desc 'Run all specs'
Spec::Rake::SpecTask.new('specs') do |t|
  t.spec_opts = ['--format', 'specdoc', '--colour']
  t.spec_files = Dir['spec/**/*_spec.rb'].sort
end

desc 'Run a specific spec with TASK=xxxx'
Spec::Rake::SpecTask.new('spec') do |t|
  t.spec_opts = ['--format', 'specdoc', '--colour']
  t.libs = ['lib']
  t.spec_files = ["spec/**/#{ENV['TASK']}_spec.rb"]
end

desc 'Run all specs output html'
Spec::Rake::SpecTask.new('specs_html') do |t|
  t.spec_opts = ['--format', 'html']
  t.libs = ['lib']
  t.spec_files = Dir['spec/**/*_spec.rb'].sort
end

desc 'RCov'
Spec::Rake::SpecTask.new('rcov') do |t|
  t.spec_opts = ['--format', 'specdoc', '--colour']
  t.spec_files = Dir['spec/**/*_spec.rb'].sort
  t.libs = ['lib']
  t.rcov = true
end

##############################################################################
# Documentation and distribution
##############################################################################

Rake::RDocTask.new do |rdoc|
  rdoc.main = 'README.rdoc'
  rdoc.rdoc_files.include('README.rdoc', 'LICENSE', 'lib/**/*.rb')
  rdoc.title = 'R18n Documentation'
  rdoc.rdoc_dir = 'doc'
  rdoc.options << '-c utf-8'
  rdoc.options << '--all'
end

spec = Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = PKG_NAME
  s.version = PKG_VERSION
  s.summary = 'I18n tool to translate your Ruby application.'
  s.description = <<-EOF
    R18n is a i18n tool to translate your Ruby application.
    It can localize your application, has translation for commons words,
    storage translation in rich YAML format with pluralization and procedures
    and has sublocales list for each supported locale.
  EOF
  
  s.files = FileList[
    'lib/**/*',
    'LICENSE',
    'Rakefile',
    'README.rdoc']
  s.test_files = FileList[
    'spec/**/*']
  s.extra_rdoc_files = ['README.rdoc', 'LICENSE']
  s.require_path = 'lib'
  s.has_rdoc = true
  
  s.author = 'Andrey "A.I." Sitnik'
  s.email = 'andrey@sitnik.ru'
  s.homepage = 'http://r18n.rubyforge.org/'
  s.rubyforge_project = PKG_NAME
end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end

desc 'Install as a gem.'
task :install => [:package] do
  sudo = RUBY_PLATFORM =~ /win32/ ? '' : 'sudo'
  sh %{#{sudo} gem install pkg/#{PKG_NAME}-#{PKG_VERSION}}
end