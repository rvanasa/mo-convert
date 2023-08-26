import C "mo:convert";

assert C.Nat16_Text(123 : Nat16) == "123";

assert C.Result_Option(#ok true) == ?true;
assert C.Option_Result<Bool, ()>(?true, ()) == #ok(true);

let array = [1, 2, 3];
assert C.Buffer_Array(C.Array_Buffer<Nat>(array)) == array;

let pipe = (
  array
  |> C.Array_Iter _
  |> C.Iter_List _
  |> C.List_Array _
);
assert pipe == array;
