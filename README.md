# Colorizr

A ruby gem that changes the output of text to the terminal.

Colorizr

## Getting Started
You will want to download this repo, or the colorizr-0.0.2.gem file and run
```
sudo gem install colorizr-0.0.2
```

To use it, just `require 'colorizr'`

## Features
This gem enables you to print colored text to the terminal.  It allows you to call a number of different color methods from any String.  You can also print out background colors.  You want to make sure you are calling a color that the program understands.  Check the usage section below.


## Usage
You can use this handy gem to colorize the output of your text to the terminal.  First, type `require 'colorizr'` in the top of your file.  This expands the String class, allowing you to call a number of different methods on any string in order to colorize it.

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
Which will list out the available colors.  To see the available background colors
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


There is an example file included with this repo.  To run it you will want to run
```
ruby example.rb
```

## Built With
Ruby

## Authors

* **Ryan Collins**

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments
