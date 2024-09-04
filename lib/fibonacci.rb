def fibs(num)
  return [0] if num.zero?

  sequence = [0, 1]
  (num - 1).times { sequence << sequence[-1] + sequence[-2] }
  return sequence
end


def fibs_rec(num)
  return [0] if num.zero?
  return [0, 1] if num == 1

  sequence = fibs_rec(num - 1)
  return sequence << sequence[-1] + sequence[-2]
end
