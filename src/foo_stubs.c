#include <caml/mlvalues.h>
#include <caml/memory.h>

CAMLprim value stub_add_ints(value first, value second) {
	CAMLparam2(first, second);
	int sum;

	sum = Int_val(first) + Int_val(second);
	CAMLreturn(Val_int(sum));
}
