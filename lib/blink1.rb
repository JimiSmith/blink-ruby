require "blink1/version"
require "blink1/device"

module Blink1
  class Blink1

    def initialize
      @device_id = 0
      @device = Device.new(@device_id)
    end

    def list_devices
      
    end

    def select_device(id)
      @device_id = id
      @device = Device.new(@device_id)
    end

    def blink(times, hex_colour)
      if @device
        @device.blink(times, hex_colour)
      end
    end

    def display_solid_colour(duration, hex_colour)
      if @device
        @device.display_solid_colour(duration, hex_colour)
      end
    end

  end
end
