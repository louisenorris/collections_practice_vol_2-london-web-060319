def begins_with_r(array)
	array.all? do |element| 
		element.start_with?("r")
	end
end


def contain_a(array)
	array_include_a =[]
	array.collect do |element| 
		if element.include?("a")
		  array_include_a << element
		end
	end
	array_include_a
end

def first_wa(array)
	array.find do |element|
		if element[0] =="w" && element[1] == "a"
			return element
		end
	end
end

def remove_non_strings(array)
	array.delete_if do |element|
		element.class != String
	end
	return array
end


def count_elements(array)
  array.group_by(&:itself).map do |key, value|
  #group_by groups an array by the identity (or rather self) of its elements.
     key.merge({:count => value.length})
  end
end

def merge_data(keys,data)
  merged_hashes = []
  data.each do |hash|
    hash.each do |name, info|
      keys.each do |key_val|
        merged_hashes << key_val.merge(info) if key_val.values[0] == name
      end
    end
  end
  merged_hashes

 end

def find_cool(array)
	cool_return = []
	array.each do |hash|
		hash.each { |k,v| cool_return << hash if k == :temperature && v == "cool"}
	end
	cool_return
end

def organize_schools(schools)
    organized_schools = {}
    schools.collect {|k,v| organized_schools[v[:location]] = []}
    organized_schools.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end


