# Apply Rouge syntax highlighting to the html files output by VimWiki
#
# Approach looks for a block of code identified as:
# <pre LANGUAGE>
# CODE LINES
# </pre>
#
# Passes CODE LINES to rouge with given LANGUAGE, and pastes result 
# back into the file.
#

require 'rouge'

puts "Processing folder: #{ARGV[0]}"

Dir.foreach(ARGV[0]) do |file|
  next unless file.end_with?(".html")
  puts " -- #{file}"
  lines = File.readlines(File.join(ARGV[0], file))
  f = File.open(File.join(ARGV[0], file), 'w')
  i = 0
  while i < lines.length do
    match = lines[i].match /\A<pre (\w+)>/
    if match
      codeblock = ""
      i += 1
      while i < lines.length and !lines[i].start_with?("</pre>") do
        codeblock << lines[i]
        i += 1
      end

      # &lt; and &gt;
      codeblock.gsub!("&lt;", "<")
      codeblock.gsub!("&gt;", ">")
      codeblock.gsub!("&amp;", "&")
      theme = Rouge::Theme.find('pastie')
      formatter = Rouge::Formatters::HTMLInline.new(theme)
      begin
        lexer = Object.const_get("Rouge::Lexers::#{match[1].capitalize}").new
        output = formatter.format(lexer.lex(codeblock))
      rescue # if lexer type does not exist, output codeblock unchanged
        output = codeblock
      end
      # write out the new code block
      f.puts "<pre>"
      f.puts output
      f.puts "</pre>"
    else
      # just write line back out
      f.puts lines[i]
    end
    i += 1
  end
  f.close
end
