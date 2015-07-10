#!/usr/bin/env ruby
require 'rubygems'
require 'bundler/setup'
require 'kramdown'
require 'pp'
require 'optparse'

options = {}
OptionParser.new do |opts|
	opts.banner = "Usage: kram.rb [options] <input> [output]"

	opts.on("-t", "--template TEMPLATE", "Template to use") do |t|
		options[:template] = t
	end

	opts.on("-o", "--output FILENAME", "Out filename (default is stdout)") do |o|
		options[:output] = o
	end
end.parse!
if ARGV.count < 1
	$stderr.puts "Missing input filename"	
	exit 1
end
if ARGV.count > 2
	$stderr.puts "Extra arguments"
	exit 1
end
options[:input] = ARGV[0]
if ARGV.count == 2
	if options.has_key? :output
		$stderr.puts "Duplicate output filenames specified"
		exit 1
	end
	options[:output] = ARGV[1]
end

s = File.read(options[:input])

kram_opts = {:entity_output => :symbolic}
if options.has_key? :template
	kram_opts[:template] = options[:template]
end
html_doc = Kramdown::Document.new(s, kram_opts).to_html

output_fh = $stdout
close_output_fh = false
if options.has_key? :output
	output_fh = File.open(options[:output], "w")
	close_output_fh = true
end
output_fh.write(html_doc)
if close_output_fh
	output_fh.close
end
