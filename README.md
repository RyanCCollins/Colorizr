# Colorizr

A ruby gem that changes the output of text to the terminal.

Colorizr

## Getting Started
You will want to download this repo, or the colorizr-0.0.2.gem file and run
```
sudo gem install colorizr-0.0.2
```

To use it, just `require 'colorizr'`

## Usage
You can use this handy gem to colorize the output of your test to the terminal.  First, type `require 'colorizr'` in the top of your file.  This expands the String class, allowing you to call a number of different methods on any string in order to colorize it.

To get a list of the colors available, try something like
```
String.color
```
Which will list out the available colors.  Also, to get a sample, you can run
```
String.sample_colors
```

Finally, you can also see the available background colors.  To do so, call
```
String.background_colors
```

## Built With
Ruby

## Authors

* **Ryan Collins**

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments
