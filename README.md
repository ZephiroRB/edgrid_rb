# EdgridRb

EdgridRb is a wrapper for the awesome gryd system from [@edigitalperu](https://github.com/escueladigital), original project can be found here: https://github.com/escueladigital/ed-grid.

This gem allows you to easily include EdGrid into your projects, it also provides your views with some helper methods to create grid dynamic gryd systems.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'edgrid_rb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install edgrid_rb

## Usage

Add the css file to your application.css file
```css
*= require ed-grid
```

It also allows you to use custom methods for the grid in your views. For example:

```ruby
#erb
<%=movil_100 do %>
  <h1> hello word </h1>
<% end %>

#slim or haml
= movil_100 do
  <h1> hello word </h1>
```

Outputs:
```html
<div class="caja movil-100">
 <h1> hello word </h1>
</div>
```

You can add css classes custom

```ruby
#erb
<%=movil_100 class: 'you_custom_class' do %>
  <h1> hello word </h1>
<% end %>
```

##Available methods
movil_n

tablet_n

web_n

hd_n

Where n is a number >=5% and <=100%

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/zephiro/edgrid_rb/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
