require 'rubygems'
require 'rake/clean'
require 'yaml'
require 'erb'

CLEAN.include(['*.tex', '*.synctex.gz', '*.pdf', '*.log', '*.aux'])
CLOBBER.include(['*.tex', '*.synctex.gz', '*.pdf', '*.log', '*.aux'])

CONFIG = YAML.load_file('config.yaml')

rule '.tex' do |t|
  template = ERB.new(File.new("#{t.name}.template").read)
  File.open(t.name, 'w+') { |f| f.write(template.result) }
end

rule '.pdf' => '.tex' do |t|
  sh "pdflatex #{t.source}"
end

desc('Generate your business card')
task generate: ['business_card.pdf']
