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

	insertion(mut arr)

	println('Sorting took: ${sw.elapsed().microseconds()}  microseconds')

	println('after: $arr')
}

fn insertion(mut array []int)
{
	for i in 1..array.len {
		mut j := i

		for j > 0 && array[j] < array[j - 1] {
			array[j], array[j - 1] = array[j - 1], array[j]
			j--
		}
	}
}