let () =
	let result = Foo.add_ints ~first:3 ~second:4 in
	print_int result;
	print_newline ()
