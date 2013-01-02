module Blink1

  class Blink1::Device

    def initialize(device_id)
      @device_id = device_id
    end

    def blink(times, hex_colour)
      do_blink(times, hex_colour)
    end

    def display_solid_colour(duration, hex_colour)
      make_solid_colour(duration, hex_colour)
    end

    def perform_sequence(sequence)

    end

    private

    def do_blink(times, hex_colour)
      exec_blink_tool(format_args(hex_colour, times))
    end

    def make_solid_colour(time, hex_colour)
      exec_blink_tool(format_args(hex_colour))
      sleep time
      exec_blink_tool(format_args(nil))
    end

    def exec_blink_tool(args)
      %x[blink1-tool #{args}]
    end

    def format_args(hex_colour, times = nil)
      arg_string = ["-d #{@device_id}"]

      if times.nil? && hex_colour.nil?
        arg_string << "--off"
      else
        unless hex_colour.nil?
          arg_string << "--rgb #{hex_to_rgb(hex_colour).join(",")}"
        end

        unless times.nil?
          arg_string << "--blink #{times}"
        end
      end

      arg_string.join(" ")
    end

    def hex_to_rgb(hex_colour)
      #https://gist.github.com/2423065
      if hex_colour.length > 6
        hex_colour = hex_colour[-6..-1]
      elsif hex_colour.length < 6
        hex_colour = hex_colour.ljust(0, "0")
      end
      hex_colour.scan(/.{2}/).collect {|component| [[component.to_i(16), 255].min, 0].max}
    end

  end
end