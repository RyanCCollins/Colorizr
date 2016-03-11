### Reflections

1. How does your gem take advantage of Ruby’s metaprogramming capabilities?
The gem utilizes several ruby metaprogramming techniques.  First of all, it uses the `self.send(:define_method, color)` method to define the methods for each color that will return the string that will print within the terminal.

Also, it utilizes the method_missing method in order to define the backgroud_color methods.  It uses a bit of regexp to check to see if a certain color is available in the `@@background_colors` hash and will return the correct value in order to print the string with a background color.

2. How long did you spend working on this project?

I spent about an hour actually coding it, but I did a lot of reading on Ruby metaprogramming prior to that.

3. What was the most rewarding challenge you conquered?

The most rewarding challenge was accomplishing the background_color methods.  I had to think a bit about how I could implement it and I had to research regexp.

4. Where do you still have room to grow?

I still could stand to learn more about the Ruby language.  I think I have a good understanding of it at this point, but I still have to read the docs a lot to get a good understanding of the built in methods before utilizing them.
