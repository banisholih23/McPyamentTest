function twoSum(array, target){
	var result = [];

	for (var i = 0; i < array.length; i++) {
		for (var j = i + 1; j < array.length; j++) {
			if (array[i] + array[j] === target) {
				result.push(i);
				result.push(j);
			}
		}
	}
	return result;
}
console.log(twoSum([2, 7, 11, 15], 13));