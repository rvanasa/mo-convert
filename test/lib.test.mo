import C "mo:convert";

let array = [1, 2, 3];
assert C.Buffer_Array(C.Array_Buffer<Nat>(array)) == array;

assert C.Nat16_Text(123 : Nat16) == "123";

assert C.Result_Option(#ok true) == ?true;
assert C.Option_Result<Bool, ()>(?true, ()) == #ok(true);
