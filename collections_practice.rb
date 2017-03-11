# your code goes here
def begins_with_r(array)
  array.all? {|word| word.start_with?('r')}
end

def contain_a(array)
  array.select {|word|
    word.include?('a')
  }
end
def first_wa(array)
  array.find { |word|
    if word.is_a? String
      word.start_with?('wa')
    end
  }
end
def remove_non_strings(array)
  array.delete_if {|elem|
    !elem.is_a? String
  }
end
def count_elements(array)
  #first occurence define keys
  #second occurence increment count
  results = [] #[{:name => black, :count => 1}]
  array.each do |obj|
    if results.length == 0
      results << {:name => obj[:name], :count => 1}
    else
      results.each do |result|
        if result[:name] == obj[:name]
          result[:count] = result[:count] + 1
        else
          results << {:name => obj[:name], :count => 0}
        end
      end
    end
  end
  results
end
def merge_data(keys, data)
  results = []
  data.each do |key, value|
    results << {}
  end
end
