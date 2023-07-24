def fibonacci(n)
    arr = [0, 1]
    i = 0
    j = 1
    while arr.length < n
        arr.append(arr[i]+arr[j])
        i+=1
        j+=1
    end
    arr
end

def fibonacci_recursive(n, i=0, arr = [0, 1])
    arr.length == n ? (return arr) : fibonacci_recursive(n, i+1, arr.append(arr[i]+arr[i+1]))
end

puts fibonacci(8)
puts fibonacci_recursive(8)