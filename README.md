# Pattern String Generator

When you just need to add some randomness to your messages.

## Installation

``` sh
gem install pattern_string_generator
```

or add to your Gemfile

``` rb
gem 'pattern_string_generator'
```

## Usage

``` sh
> pattern = '(Hello|Hi), World!'.as_pattern

> pattern.to_s
 => "Hi, World!"

> pattern.to_s
 => "Hello, World!"
```
