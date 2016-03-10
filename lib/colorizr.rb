class String
  @@colors = {red: , green:, yellow:, blue: , pink: , light_blue: , white: , light_grey: , black:, }

  def self.create_colors
    @@colors.each do |color, value|
      self.send(:define_method, color) do
        "\e[#{value}m" + self + "\e[0m"
      end
    end
  end

  def self.colors
    @@colors.each do |color, value|
      colors << color
    end
  end

  def self.sample_colors
    @@colors.each do |color, value|
      puts "This is " + "#{color}".send(color)
    end
  end
end

# Create the colors for the String class
String.create_colors
