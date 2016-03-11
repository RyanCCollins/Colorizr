class String
  # Colors hash holds all of the standard commandline color values
    # The pink is actually light_magenta
  @@colors = { red: 31, green: 32, yellow: 33, blue: 34,
               magenta: 35, pink: 95, light_blue: 94, white: 97,
               light_grey: 37, black: 30, cyan: 36, dark_gray: 90,
                light_red: 91, light_green: 92 }

  @@background_colors = { black: 40, red: 41, green: 42, yellow: 43,
                          blue: 44, magenta: 45, cyan: 46, light_grey: 47,
                          dark_gray: 100, light_red: 101, light_green: 102,
                          light_yellow: 103, light_blue: 104, light_magenta: 105,
                          pink: 105, light_cyan: 106, white: 107 }

  # If a method is called that does not exist,
    # Then call the method missing.
  def method_missing name, *args, &block
    colors = @@background_colors.dup
    name = name.to_s.downcase

    # Attempt to match any method with the prefix of
      # backgroud_ to try to print out the background color.
      # For example, background_blue will return the value of blue, which is
      # determined in the @@brand_colors hash above.
    if(match_data = /^background_(\w*?)/.match name)
      # If a match from the regexp is found to equal backgroud_
        # then loop through the background_colors hash and find the
        # value that matches the second part of the MatchData,
        # which should be a color.
      if match_data[1] == 'background_'
        @@background_colors.each do |color, value|
          # Remove the _ and return the value
          if color == match_data[2].gsub("_", "")
            return value
          end
        end
        #@@background_colors.select { |color, value| color == md[2].gsub("_", "") }
      end
    else
      puts "Sorry, but #{name} is not a valid method"
    end
  end


  # Create the color methods for every value in the @@colors array
  def self.create_colors
    @@colors.each do |color, value|
      self.send(:define_method, color) do
        "\e[#{value}m" + self + "\e[0m"
      end
    end
  end


  # Return the colors in a usable array by calling Colorizr.colors
  def self.colors
    color_arr = []
    @@colors.each do |color, value|
      color_arr << color
    end
    return color_arr
  end


  # Give a sample of all of the available colors.  Takes
    # an option for showing background colors
  def self.sample_colors
    @@colors.each do |color, value|
      puts "This is " + "#{color}".send(color)
    end
  end
end

# Create the colors for the String class
String.create_colors
