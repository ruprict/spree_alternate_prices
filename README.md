SpreeAlternatePrices
====================

Adds alternate product prices that can be applied via Promotions.  Adds a category to the Price model that is ignored until specifically referenced.

Installation
------------

1) Add spree_alternate_prices to your Gemfile:

```ruby
gem 'spree_alternate_prices', github: 'aegixx/spree_alternate_prices', branch: '2-4-stable'
```

2) Bundle your dependencies:

```shell
bundle
```

3) (OPTIONAL) This is built on top of spree_multi_currency, so run that installation generator first (if you haven't already):

```shell
bundle && bundle exec rails g spree_multi_currency:install
```

4) Now run this installation generator (you can skip the bundle if you completed Step 3:
```shell
bundle && bundle exec rails g spree_alternate_prices:install
```

5) (OPTIONAL) Add Calculator to config/initializers/spree.rb configuration:

```ruby
Rails.application.config.spree.calculators.promotion_actions_create_item_adjustments << Spree::Calculator::AlternatePriceCalculator
```

Testing
-------

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle && bundle exec rake
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_alternate_prices/factories'
```

Copyright (c) 2015 Kailos Genetics, Inc., released under the New BSD License
