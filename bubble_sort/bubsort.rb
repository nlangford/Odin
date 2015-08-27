def bubble_sort(nums)
  times = 0
  begin
    swapped = false
    (1...nums.length).each do |i|
      if nums[i-1] > nums[i]
        tmp = nums[i-1]
        nums[i-1]=nums[i]
        nums[i]=tmp
        swapped = true
        times +=1
      end
      print "#{nums}\n"
    end
    puts times
  end while swapped
end

bubble_sort([1,2,3,4,5].shuffle)

def bubble_sort_by(nums)
  begin
    swapped = false
    (1...nums.length).each do |i|
      if yield(nums[i-1], nums[i]) < 0
        nums[i-1], nums[i] = nums[i], nums[i-1]
        swapped = true
      end
    end
  end while swapped
  print nums
end

bubble_sort_by(["hi","hello","hey"]) { |left, right| left.length - right.length }