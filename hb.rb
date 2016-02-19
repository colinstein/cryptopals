#!/usr/bin/env ruby

module Cryptopals

  class StringMangler
    def initialize(hex_string)
      @raw = decoded_hex(hex_string)
    end

    def base64
      [@raw].pack("m0")
    end

    private

    def decoded_hex(hex_string)
      [hex_string].pack("H*")
    end
  end

  class Application
    attr_reader :input, :needs_help

    def initialize(argv)
      @input = parse_argv(argv)
      @needs_help = %w(--help -h).include?(input)
    end

    def run
      help if needs_help
      exit(1) if input.nil?
      puts StringMangler.new(input).base64
    end

    private

    def parse_argv(argv)
      return STDIN.gets if argv.length == 0
      return nil if argv.length >= 2
      argv.first
    end

    def set_needs_help
      @needs_help = true
      nil
    end

    def help
      puts DATA.read
      exit 0
    end

  end

end

Cryptopals::Application.new(ARGV).run

__END__
Converts a Hex string to base64
usage: hb <HEX STRING>
or: cat hex.txt | hb
