def powers_of_two(n)
    solution = [];
    (0..n).each do |step|
      solution.append(2**step);
      end
     return solution
  end