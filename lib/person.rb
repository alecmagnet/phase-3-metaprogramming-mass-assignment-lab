class Person
  
  # MOST ABSTRACT

  # def initialize(attributes)
  #   attributes.each do |key, value|
  #     self.class.attr_accessor(key)
  #     self.send("#{key}=", value)
  #   end
  # end

  # MOST ABSTRACT -- PLUS IMPLICIT SELF IN LINE 17

  def initialize(attributes)
    attributes.each do |k, v|
      self.class.attr_accessor(k)
      send("#{k}=", v)
    end
  end 

  # MORE COMPLICATED VERSION FOR PRACTICE

  # attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size,:wrist_size, :glove_size, :pant_length, :pant_width

  # def initialize(attributes)
  #   attributes.each do |k, v|
  #     send("#{k}=", v)
  #   end
  # end
end
