# Colorizr

A ruby gem that colors the output of text to the terminal.

Colorizr

## Getting Started
You will want to download this repo, or the colorizr-0.0.2.gem file and run
```
sudo gem install colorizr-0.0.2
```

To use it, just `require 'colorizr'` in the file you wish to use it with.

There is an example file included with this repo.  Feel free to take a look at it and try running it with
```
ruby example.rb
```


## Features
This gem enables you to print colored text to the terminal.  It allows you to call a number of different color methods from any String.  You can also print out background colors.  You want to make sure you are calling a color that the program understands.  Check the usage section below.


## Usage
Here are some handy usages of the gem.

To use the gem to print colored text
```
puts "I am red".red
puts "I am blue".blue
puts "I am ".background_red + "a stop".background_yellow + "light".background_green
```

To get a list of the colors available once this gem is loaded
```
String.colors
```
Which will list out the available colors.  

To see the available background colors
```
String.background_colors
```


Also, to get a sample printout of every color, you can run
```
String.sample_colors
```

You can also use some ruby magic and call just about any method prefixed with "background_" to print a background color that exists in the list return by calling `String.background_colors`.  Try it!

```
puts "Hello".background_red
puts "This is blue".background_blue
```

You can also get super fancy if you really want to and call something like
```
puts "This is a string with crazy background and foreground colors".red.background_red
```

## Built With
Ruby

## Authors

* **Ryan Collins**

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
