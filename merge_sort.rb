require 'pry-byebug'
# binding.pry

def merge_sort(arr)
    new_arr = []
    swapped = []
    if arr.length > 2
        arr1 = merge_sort(arr[0..((arr.length-1)/2).floor()])
        arr2 = merge_sort(arr[((arr.length-1)/2).floor()+1..-1])
    elsif arr.length == 2
        arr[0] > arr[1] ? (return [arr[1], arr[0]]) : (return arr)
    else
        return arr
    end
    arr1.each do |item|
        arr2.each do |item2|
        item > item2 ? (
            unless swapped.include?(item2)
                new_arr.append(item2)
                swapped.append(item2)
            end
        ) : (
            unless swapped.include?(item)
                new_arr.append(item)
                swapped.append(item)
            end
        )
        end
    end
    arr1.each { |item| if !swapped.include?(item) then new_arr.append(item) end }
    arr2.each { |item| if !swapped.include?(item) then new_arr.append(item) end }
    return new_arr
end

puts merge_sort([18, 5, 17, 1, 12, 6]).inspect