def search_method(arr, x)
	arr.find_index(x)
end

# ------------------------------------

def fib(x)

  a = [0]

  x.times do |i|
    if i == 0
      a[i] = 0
    elsif i == 1
      a[i] = 1
    else
      a[i] = a[i-1] + a[i-2]
    end  
    p a
  end

  return a[x-1]
end

fib(100)

# ------------------------------------

def insertion(arr)
    for size in 2..arr.length
        element = arr[size-1]   
        index = size - 2
        while(index >= 0) && (element < arr[index])
            arr[index + 1] = arr[index]
            index-=1
        end
        arr[index+1] = element
    end
        
end
