import C "mo:convert";

assert C.Text.ofNat16(123 : Nat16) == "123";

assert C.Option.ofResult(#ok true) == ?true;
assert C.Result.ofOption<Bool, ()>(?true, ()) == #ok(true);

let array = [1, 2, 3];
assert C.Array.ofBuffer(C.Buffer.ofArray<Nat>(array)) == array;

let pipe = (
  array
  |> C.Iter.ofArray _
  |> C.List.ofIter _
  |> C.Array.ofList _
);
assert pipe == array;
