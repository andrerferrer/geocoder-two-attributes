# GOAL

This is a demo to show-case how to implement the [`geocoder` gem](https://github.com/alexreisner/geocoder#geocoding-objects) in a model, adding the coordinates according to the address.

[You can also check my other demos](https://github.com/andrerferrer/dedemos/blob/master/README.md#ded%C3%A9mos).

## What needs to be done?

### Have a model that you need two columns
  We have built the [Order model](app/models/order.rb) for that.

  * Why do we want that?

      So, a order is taken from a place to another place. We need the coordinates for both of them to display on a map. That's why we need both coordinates.
    
  * Why does that not work easily?

    The first guess might be to do something like this:
  
    ```ruby
    class Order < ApplicationRecord
      geocoded_by :from_address, latitude: :from_address_lat, longitude: :from_address_lon
      geocoded_by :to_address, latitude: :to_address_lat, longitude: :to_address_lon
    end
    ```
    
    The first guess might be to do something like this:

  > Truth be told, the best/easiest solution would have been be to have two models.

### Add a callback



And we're good to go 🤓

Good Luck and Have Fun
