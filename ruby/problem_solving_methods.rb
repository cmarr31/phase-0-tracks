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

