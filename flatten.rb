module ArrayFlatten

  def self.flatten(array)
    output_array = []
    array.each do |element|
      if element.is_a?(Array)
        flatten_and_append(element, output_array)
      else
        output_array << element
      end
    end
    output_array
  end

  def self.flatten_and_append(element, output_array)
    flatten(element).each do |inner_element|
      output_array << inner_element
    end
  end

  private_class_method :flatten_and_append
end