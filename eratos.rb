
def eratos(arr, result = [])
  if arr.empty? then
    return nil
  end
  
  if arr.first.to_i > Math.sqrt(arr.last) then
    return result + arr
  end

  prime_number = arr.first
  result.push(prime_number)

  eratos(arr.reject{|x| x.to_i % prime_number.to_i == 0}, result)
end

def get_candidate_list(x)
  candidate_list = Array.new(x.to_i){ |index| index.to_i + 1}.drop(1)
end

if ARGV[0].to_i > 2 then
  p eratos(get_candidate_list(ARGV[0].to_i))
end

