# coding: utf-8
# コマンドラインツール

require "optparse"

OPTS = {}

OptionParser.new do |opt|
  begin
    opt.version = '0.0.1'
    opt.banner += " [files...]"
    opt.on('-u=VAL', '--user', 'user') {|v| OPTS[:u] = v}
    opt.on('-p=VAL', '--password', 'password') {|v| OPTS[:p] = v}
    opt.on('-s[=VAL]', '--server', 'server name') {|v| OPTS[:s] = v}
    
    opt.on_tail("-h", "--help", "Show this message") do
      puts opts
    exit
end

    opt.parse!(ARGV)
  rescue => e
    $stderr.puts "ERROR: #{e}.\n#{opt}"
    exit
  end
end

# EOF
