local mymodule = {}

function mymodule.binary_search(number, array)
	local mid
	local min = 1
	local max = #array

	while(min <= max) do
		mid = math.floor(max / min)

		if number == array[mid] then
			return mid
		end

		if number > array[mid] then
			min = mid + 1
		elseif number < array[mid] then
			max = mid - 1
		end
	end

	return -1
end

return mymodule
