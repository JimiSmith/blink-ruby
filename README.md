# Blink1

This gem enables control of the blink(1) usb thingy from ruby. It currently relies on the blink1-tool command being present in your path.

## Installation

Add this line to your application's Gemfile:

    gem 'blink1'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blink1

## Usage

```
device = Blink1::Blink1.new
device.blink(5, ffffff) # blinks 5 times in white
device.display_solid_colour(3, ff0000) # stays red for 3 seconds, then turns off
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
