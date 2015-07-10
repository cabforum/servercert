#!/usr/bin/env ruby
require 'rubygems'

contents = nil
File.open(ARGV[0], 'r:UTF-8') do |f|
    contents = f.read
end
contents.strip!

contents.each_char do |c|
    case c.ord
    # New line
    when 0xa
        puts
    when 0xd # Carriage return
	# Do nothing
    # Tab is 4 spaces
    when 0x9
        print "    "
    # Printable ascii + space
    when 0x20..0x7e
        print c
    # 'SECTION SIGN' (U+00A7)
    when 0xa7
	print "&sect;"
    # 'HYPHEN' (U+2010)
    when 0x2010
        print "-"
    # 'EN DASH' (U+2013)
    when 0x2013
        print "--"
    # 'LEFT SINGLE QUOTATION MARK' (U+2018)
    when 0x2018
        print "'"
    # 'RIGHT SINGLE QUOTATION MARK' (U+2019)
    when 0x2019
        print "'"
    # 'LEFT DOUBLE QUOTATION MARK' (U+201C)
    when 0x201c
        print '"'
    # 'RIGHT DOUBLE QUOTATION MARK' (U+201D)
    when 0x201d
        print '"'
    else
        $stderr.puts "\n0x#{c.ord.to_s(16)} is not allowed in #{ARGV[0]}!"
        exit 10
    end
end
puts

# '
