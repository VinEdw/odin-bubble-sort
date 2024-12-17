def bubble_sort(arr)
  new_arr = arr.clone

  (new_arr.length - 1).downto(0) do |end_idx|
    swap_performed = false
    (0...end_idx).each_with_index do |i|
      val = new_arr[i]
      next_val = new_arr[i + 1]
      if next_val < val
        new_arr[i] = next_val
        new_arr[i + 1] = val
        swap_performed = true
      end
    end

    break unless swap_performed
  end

  new_arr
end
