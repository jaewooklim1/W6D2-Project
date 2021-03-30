class AttrAccessorObject
  def self.my_attr_accessor(*names)
      names.each do |oneName|
        define_method(oneName) do 
          instance_variable_get("@#{oneName}")          
        end

        define_method("#{oneName}=") do |value|
          instance_variable_set("@#{oneName}", value)
        end
      end    
  end
end
