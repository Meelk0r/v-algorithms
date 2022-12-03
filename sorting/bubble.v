import rand
import time

fn main()
{
	mut arr := []int{}
	for _ in 0 .. 10 {
		arr << rand.intn(100) or {0}
	}

	sw := time.new_stopwatch()

	println('before: $arr')

	bubblesort(mut arr)

	println('Sorting took: ${sw.elapsed().microseconds()}  microseconds')

	println('after: $arr')
}

fn bubblesort(mut array []int)
{
	for i in 0..array.len-1 {
		for j in 0..array.len-i-1 {
			if array[j] > array[j+1] {
				array[j], array[j+1] = array[j+1], array[j]
			}
		}
	}
}

