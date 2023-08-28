import Prim "mo:⛔";
import Bool "mo:base/Bool";
import Buffer "mo:base/Buffer";
import HashMap "mo:base/HashMap";
import Heap "mo:base/Heap";
import Int "mo:base/Int";
import Int16 "mo:base/Int16";
import Int32 "mo:base/Int32";
import Int64 "mo:base/Int64";
import Int8 "mo:base/Int8";
import Iter "mo:base/Iter";
import List "mo:base/List";
import Nat "mo:base/Nat";
import Nat16 "mo:base/Nat16";
import Nat32 "mo:base/Nat32";
import Nat64 "mo:base/Nat64";
import Nat8 "mo:base/Nat8";
import Principal "mo:base/Principal";
import Result "mo:base/Result";
import Text "mo:base/Text";
import Trie "mo:base/Trie";
import TrieMap "mo:base/TrieMap";
import TrieSet "mo:base/TrieSet";

module Convert {
  /// From base library:
  /// ```motoko no-repl
  /// import Blob "mo:base/Blob";
  /// Blob.Blob.fromArray(bytes : [Nat8]) : Blob
  /// ```
  public let Array_Blob = Prim.arrayToBlob;

  /// From base library:
  /// ```motoko no-repl
  /// import Blob "mo:base/Blob";
  /// Blob.Blob.fromArrayMut(bytes : [var Nat8]) : Blob
  /// ```
  public let ArrayMut_Blob = Prim.arrayMutToBlob;

  /// From base library:
  /// ```motoko no-repl
  /// import Blob "mo:base/Blob";
  /// Blob.Blob.toArray(blob : Blob) : [Nat8]
  /// ```
  public let Blob_Array = Prim.blobToArray;

  /// From base library:
  /// ```motoko no-repl
  /// import Blob "mo:base/Blob";
  /// Blob.Blob.toArrayMut(blob : Blob) : [var Nat8]
  /// ```
  public let Blob_ArrayMut = Prim.blobToArrayMut;

  /// From base library:
  /// ```motoko no-repl
  /// import Bool "mo:base/Bool";
  /// Bool.Bool.toText(x : Bool) : Text
  /// ```
  public let Bool_Text = Bool.toText;

  /// From base library:
  /// ```motoko no-repl
  /// import Buffer "mo:base/Buffer";
  /// Buffer.Buffer.fromArray<X>(array : [X]) : Buffer<X>
  /// ```
  public let Array_Buffer = Buffer.fromArray;

  /// From base library:
  /// ```motoko no-repl
  /// import Buffer "mo:base/Buffer";
  /// Buffer.Buffer.fromIter<X>(iter : { next : () -> ?X }) : Buffer<X>
  /// ```
  public let Iter_Buffer = Buffer.fromIter;

  /// From base library:
  /// ```motoko no-repl
  /// import Buffer "mo:base/Buffer";
  /// Buffer.Buffer.fromVarArray<X>(array : [var X]) : Buffer<X>
  /// ```
  public let VarArray_Buffer = Buffer.fromVarArray;

  /// From base library:
  /// ```motoko no-repl
  /// import Buffer "mo:base/Buffer";
  /// Buffer.Buffer.toArray<X>(buffer : Buffer<X>) : [X]
  /// ```
  public let Buffer_Array = Buffer.toArray;

  /// From base library:
  /// ```motoko no-repl
  /// import Buffer "mo:base/Buffer";
  /// Buffer.Buffer.toText<X>(buffer : Buffer<X>, toText : X -> Text) : Text
  /// ```
  public let Buffer_Text = Buffer.toText;

  /// From base library:
  /// ```motoko no-repl
  /// import Buffer "mo:base/Buffer";
  /// Buffer.Buffer.toVarArray<X>(buffer : Buffer<X>) : [var X]
  /// ```
  public let Buffer_VarArray = Buffer.toVarArray;

  /// From base library:
  /// ```motoko no-repl
  /// import Char "mo:base/Char";
  /// Char.Char.fromNat32 : (w : Nat32) -> Char
  /// ```
  public let Nat32_Char = Prim.nat32ToChar;

  /// From base library:
  /// ```motoko no-repl
  /// import Char "mo:base/Char";
  /// Char.Char.toNat32 : (c : Char) -> Nat32
  /// ```
  public let Char_Nat32 = Prim.charToNat32;

  /// From base library:
  /// ```motoko no-repl
  /// import Char "mo:base/Char";
  /// Char.Char.toText : (c : Char) -> Text
  /// ```
  public let Char_Text = Prim.charToText;

  /// From base library:
  /// ```motoko no-repl
  /// import Float "mo:base/Float";
  /// Float.Float.fromInt : Int -> Float
  /// ```
  public let Int_Float = Prim.intToFloat;

  /// From base library:
  /// ```motoko no-repl
  /// import Float "mo:base/Float";
  /// Float.Float.fromInt64 : Int64 -> Float
  /// ```
  public let Int64_Float = Prim.int64ToFloat;

  /// From base library:
  /// ```motoko no-repl
  /// import Float "mo:base/Float";
  /// Float.Float.toInt : Float -> Int
  /// ```
  public let Float_Int = Prim.floatToInt;

  /// From base library:
  /// ```motoko no-repl
  /// import Float "mo:base/Float";
  /// Float.Float.toInt64 : Float -> Int64
  /// ```
  public let Float_Int64 = Prim.floatToInt64;

  /// From base library:
  /// ```motoko no-repl
  /// import Float "mo:base/Float";
  /// Float.Float.toText : Float -> Text
  /// ```
  public let Float_Text = Prim.floatToText;

  /// From base library:
  /// ```motoko no-repl
  /// import HashMap "mo:base/HashMap";
  /// HashMap.HashMap.fromIter<K, V>(iter : Iter.Iter<(K, V)>, initCapacity : Nat, keyEq : (K, K) -> Bool, keyHash : K -> Hash.Hash) : HashMap<K, V>
  /// ```
  public let Iter_HashMap = HashMap.fromIter;

  /// From base library:
  /// ```motoko no-repl
  /// import Heap "mo:base/Heap";
  /// Heap.Heap.fromIter<X>(iter : I.Iter<X>, compare : (X, X) -> O.Order) : Heap<X>
  /// ```
  public let Iter_Heap = Heap.fromIter;

  /// From base library:
  /// ```motoko no-repl
  /// import Int "mo:base/Int";
  /// Int.Int.toText(x : Int) : Text
  /// ```
  public let Int_Text = Int.toText;

  /// From base library:
  /// ```motoko no-repl
  /// import Int16 "mo:base/Int16";
  /// Int16.Int16.fromInt : Int -> Int16
  /// ```
  public let Int_Int16 = Prim.intToInt16;

  /// From base library:
  /// ```motoko no-repl
  /// import Int16 "mo:base/Int16";
  /// Int16.Int16.fromIntWrap : Int -> Int16
  /// ```
  public let IntWrap_Int16 = Int16.fromIntWrap;

  /// From base library:
  /// ```motoko no-repl
  /// import Int16 "mo:base/Int16";
  /// Int16.Int16.fromNat16 : Nat16 -> Int16
  /// ```
  public let Nat16_Int16 = Prim.nat16ToInt16;

  /// From base library:
  /// ```motoko no-repl
  /// import Int16 "mo:base/Int16";
  /// Int16.Int16.toInt : Int16 -> Int
  /// ```
  public let Int16_Int = Prim.int16ToInt;

  /// From base library:
  /// ```motoko no-repl
  /// import Int16 "mo:base/Int16";
  /// Int16.Int16.toNat16 : Int16 -> Nat16
  /// ```
  public let Int16_Nat16 = Prim.int16ToNat16;

  /// From base library:
  /// ```motoko no-repl
  /// import Int16 "mo:base/Int16";
  /// Int16.Int16.toText(x : Int16) : Text
  /// ```
  public let Int16_Text = Int16.toText;

  /// From base library:
  /// ```motoko no-repl
  /// import Int32 "mo:base/Int32";
  /// Int32.Int32.fromInt : Int -> Int32
  /// ```
  public let Int_Int32 = Prim.intToInt32;

  /// From base library:
  /// ```motoko no-repl
  /// import Int32 "mo:base/Int32";
  /// Int32.Int32.fromIntWrap : Int -> Int32
  /// ```
  public let IntWrap_Int32 = Int32.fromIntWrap;

  /// From base library:
  /// ```motoko no-repl
  /// import Int32 "mo:base/Int32";
  /// Int32.Int32.fromNat32 : Nat32 -> Int32
  /// ```
  public let Nat32_Int32 = Prim.nat32ToInt32;

  /// From base library:
  /// ```motoko no-repl
  /// import Int32 "mo:base/Int32";
  /// Int32.Int32.toInt : Int32 -> Int
  /// ```
  public let Int32_Int = Prim.int32ToInt;

  /// From base library:
  /// ```motoko no-repl
  /// import Int32 "mo:base/Int32";
  /// Int32.Int32.toNat32 : Int32 -> Nat32
  /// ```
  public let Int32_Nat32 = Prim.int32ToNat32;

  /// From base library:
  /// ```motoko no-repl
  /// import Int32 "mo:base/Int32";
  /// Int32.Int32.toText(x : Int32) : Text
  /// ```
  public let Int32_Text = Int32.toText;

  /// From base library:
  /// ```motoko no-repl
  /// import Int64 "mo:base/Int64";
  /// Int64.Int64.fromInt : Int -> Int64
  /// ```
  public let Int_Int64 = Prim.intToInt64;

  /// From base library:
  /// ```motoko no-repl
  /// import Int64 "mo:base/Int64";
  /// Int64.Int64.fromIntWrap : Int -> Int64
  /// ```
  public let IntWrap_Int64 = Int64.fromIntWrap;

  /// From base library:
  /// ```motoko no-repl
  /// import Int64 "mo:base/Int64";
  /// Int64.Int64.fromNat64 : Nat64 -> Int64
  /// ```
  public let Nat64_Int64 = Prim.nat64ToInt64;

  /// From base library:
  /// ```motoko no-repl
  /// import Int64 "mo:base/Int64";
  /// Int64.Int64.toInt : Int64 -> Int
  /// ```
  public let Int64_Int = Prim.int64ToInt;

  /// From base library:
  /// ```motoko no-repl
  /// import Int64 "mo:base/Int64";
  /// Int64.Int64.toNat64 : Int64 -> Nat64
  /// ```
  public let Int64_Nat64 = Prim.int64ToNat64;

  /// From base library:
  /// ```motoko no-repl
  /// import Int64 "mo:base/Int64";
  /// Int64.Int64.toText(x : Int64) : Text
  /// ```
  public let Int64_Text = Int64.toText;

  /// From base library:
  /// ```motoko no-repl
  /// import Int8 "mo:base/Int8";
  /// Int8.Int8.fromInt : Int -> Int8
  /// ```
  public let Int_Int8 = Prim.intToInt8;

  /// From base library:
  /// ```motoko no-repl
  /// import Int8 "mo:base/Int8";
  /// Int8.Int8.fromIntWrap : Int -> Int8
  /// ```
  public let IntWrap_Int8 = Int8.fromIntWrap;

  /// From base library:
  /// ```motoko no-repl
  /// import Int8 "mo:base/Int8";
  /// Int8.Int8.fromNat8 : Nat8 -> Int8
  /// ```
  public let Nat8_Int8 = Prim.nat8ToInt8;

  /// From base library:
  /// ```motoko no-repl
  /// import Int8 "mo:base/Int8";
  /// Int8.Int8.toInt : Int8 -> Int
  /// ```
  public let Int8_Int = Prim.int8ToInt;

  /// From base library:
  /// ```motoko no-repl
  /// import Int8 "mo:base/Int8";
  /// Int8.Int8.toNat8 : Int8 -> Nat8
  /// ```
  public let Int8_Nat8 = Prim.int8ToNat8;

  /// From base library:
  /// ```motoko no-repl
  /// import Int8 "mo:base/Int8";
  /// Int8.Int8.toText(x : Int8) : Text
  /// ```
  public let Int8_Text = Int8.toText;

  /// From base library:
  /// ```motoko no-repl
  /// import Iter "mo:base/Iter";
  /// Iter.Iter.fromArray<A>(xs : [A]) : Iter<A>
  /// ```
  public let Array_Iter = Iter.fromArray;

  /// From base library:
  /// ```motoko no-repl
  /// import Iter "mo:base/Iter";
  /// Iter.Iter.fromArrayMut<A>(xs : [var A]) : Iter<A>
  /// ```
  public let ArrayMut_Iter = Iter.fromArrayMut;

  /// From base library:
  /// ```motoko no-repl
  /// import Iter "mo:base/Iter";
  /// Iter.Iter.fromList
  /// ```
  public let List_Iter = Iter.fromList;

  /// From base library:
  /// ```motoko no-repl
  /// import Iter "mo:base/Iter";
  /// Iter.Iter.toArray<A>(xs : Iter<A>) : [A]
  /// ```
  public let Iter_Array = Iter.toArray;

  /// From base library:
  /// ```motoko no-repl
  /// import Iter "mo:base/Iter";
  /// Iter.Iter.toArrayMut<A>(xs : Iter<A>) : [var A]
  /// ```
  public let Iter_ArrayMut = Iter.toArrayMut;

  /// From base library:
  /// ```motoko no-repl
  /// import Iter "mo:base/Iter";
  /// Iter.Iter.toList<A>(xs : Iter<A>) : List.List<A>
  /// ```
  public let Iter_List = Iter.toList;

  /// From base library:
  /// ```motoko no-repl
  /// import List "mo:base/List";
  /// List.List.fromArray<T>(xs : [T]) : List<T>
  /// ```
  public let Array_List = List.fromArray;

  /// From base library:
  /// ```motoko no-repl
  /// import List "mo:base/List";
  /// List.List.fromVarArray<T>(xs : [var T]) : List<T>
  /// ```
  public let VarArray_List = List.fromVarArray;

  /// From base library:
  /// ```motoko no-repl
  /// import List "mo:base/List";
  /// List.List.toArray<T>(xs : List<T>) : [T]
  /// ```
  public let List_Array = List.toArray;

  /// From base library:
  /// ```motoko no-repl
  /// import List "mo:base/List";
  /// List.List.toIter<T>(xs : List<T>) : Iter.Iter<T>
  /// ```
  public let List_Iter = List.toIter;

  /// From base library:
  /// ```motoko no-repl
  /// import List "mo:base/List";
  /// List.List.toVarArray<T>(xs : List<T>) : [var T]
  /// ```
  public let List_VarArray = List.toVarArray;

  /// From base library:
  /// ```motoko no-repl
  /// import Nat "mo:base/Nat";
  /// Nat.Nat.fromText(text : Text) : ?Nat
  /// ```
  public let Text_Nat = Nat.fromText;

  /// From base library:
  /// ```motoko no-repl
  /// import Nat "mo:base/Nat";
  /// Nat.Nat.toText(n : Nat) : Text
  /// ```
  public let Nat_Text = Nat.toText;

  /// From base library:
  /// ```motoko no-repl
  /// import Nat16 "mo:base/Nat16";
  /// Nat16.Nat16.fromIntWrap : Int -> Nat16
  /// ```
  public let IntWrap_Nat16 = Nat16.fromIntWrap;

  /// From base library:
  /// ```motoko no-repl
  /// import Nat16 "mo:base/Nat16";
  /// Nat16.Nat16.fromNat : Nat -> Nat16
  /// ```
  public let Nat_Nat16 = Prim.natToNat16;

  /// From base library:
  /// ```motoko no-repl
  /// import Nat16 "mo:base/Nat16";
  /// Nat16.Nat16.toNat : Nat16 -> Nat
  /// ```
  public let Nat16_Nat = Prim.nat16ToNat;

  /// From base library:
  /// ```motoko no-repl
  /// import Nat16 "mo:base/Nat16";
  /// Nat16.Nat16.toText(x : Nat16) : Text
  /// ```
  public let Nat16_Text = Nat16.toText;

  /// From base library:
  /// ```motoko no-repl
  /// import Nat32 "mo:base/Nat32";
  /// Nat32.Nat32.fromIntWrap : Int -> Nat32
  /// ```
  public let IntWrap_Nat32 = Nat32.fromIntWrap;

  /// From base library:
  /// ```motoko no-repl
  /// import Nat32 "mo:base/Nat32";
  /// Nat32.Nat32.fromNat : Nat -> Nat32
  /// ```
  public let Nat_Nat32 = Prim.natToNat32;

  /// From base library:
  /// ```motoko no-repl
  /// import Nat32 "mo:base/Nat32";
  /// Nat32.Nat32.toNat : Nat32 -> Nat
  /// ```
  public let Nat32_Nat = Prim.nat32ToNat;

  /// From base library:
  /// ```motoko no-repl
  /// import Nat32 "mo:base/Nat32";
  /// Nat32.Nat32.toText(x : Nat32) : Text
  /// ```
  public let Nat32_Text = Nat32.toText;

  /// From base library:
  /// ```motoko no-repl
  /// import Nat64 "mo:base/Nat64";
  /// Nat64.Nat64.fromIntWrap : Int -> Nat64
  /// ```
  public let IntWrap_Nat64 = Nat64.fromIntWrap;

  /// From base library:
  /// ```motoko no-repl
  /// import Nat64 "mo:base/Nat64";
  /// Nat64.Nat64.fromNat : Nat -> Nat64
  /// ```
  public let Nat_Nat64 = Prim.natToNat64;

  /// From base library:
  /// ```motoko no-repl
  /// import Nat64 "mo:base/Nat64";
  /// Nat64.Nat64.toNat : Nat64 -> Nat
  /// ```
  public let Nat64_Nat = Prim.nat64ToNat;

  /// From base library:
  /// ```motoko no-repl
  /// import Nat64 "mo:base/Nat64";
  /// Nat64.Nat64.toText(x : Nat64) : Text
  /// ```
  public let Nat64_Text = Nat64.toText;

  /// From base library:
  /// ```motoko no-repl
  /// import Nat8 "mo:base/Nat8";
  /// Nat8.Nat8.fromIntWrap : Int -> Nat8
  /// ```
  public let IntWrap_Nat8 = Nat8.fromIntWrap;

  /// From base library:
  /// ```motoko no-repl
  /// import Nat8 "mo:base/Nat8";
  /// Nat8.Nat8.fromNat : Nat -> Nat8
  /// ```
  public let Nat_Nat8 = Prim.natToNat8;

  /// From base library:
  /// ```motoko no-repl
  /// import Nat8 "mo:base/Nat8";
  /// Nat8.Nat8.toNat : Nat8 -> Nat
  /// ```
  public let Nat8_Nat = Prim.nat8ToNat;

  /// From base library:
  /// ```motoko no-repl
  /// import Nat8 "mo:base/Nat8";
  /// Nat8.Nat8.toText(x : Nat8) : Text
  /// ```
  public let Nat8_Text = Nat8.toText;

  /// From base library:
  /// ```motoko no-repl
  /// import Principal "mo:base/Principal";
  /// Principal.Principal.fromActor(a : actor {  }) : Principal
  /// ```
  public let Actor_Principal = Prim.principalOfActor;

  /// From base library:
  /// ```motoko no-repl
  /// import Principal "mo:base/Principal";
  /// Principal.Principal.fromBlob(b : Blob) : Principal
  /// ```
  public let Blob_Principal = Prim.principalOfBlob;

  /// From base library:
  /// ```motoko no-repl
  /// import Principal "mo:base/Principal";
  /// Principal.Principal.fromText(t : Text) : Principal
  /// ```
  public let Text_Principal = Principal.fromText;

  /// From base library:
  /// ```motoko no-repl
  /// import Principal "mo:base/Principal";
  /// Principal.Principal.toBlob(p : Principal) : Blob
  /// ```
  public let Principal_Blob = Prim.blobOfPrincipal;

  /// From base library:
  /// ```motoko no-repl
  /// import Principal "mo:base/Principal";
  /// Principal.Principal.toText(p : Principal) : Text
  /// ```
  public let Principal_Text = Principal.toText;

  /// From base library:
  /// ```motoko no-repl
  /// import Result "mo:base/Result";
  /// Result.Result.fromOption<R, E>(x : ?R, err : E) : Result<R, E>
  /// ```
  public let Option_Result = Result.fromOption;

  /// From base library:
  /// ```motoko no-repl
  /// import Result "mo:base/Result";
  /// Result.Result.toOption<R, E>(r : Result<R, E>) : ?R
  /// ```
  public let Result_Option = Result.toOption;

  /// From base library:
  /// ```motoko no-repl
  /// import Text "mo:base/Text";
  /// Text.Text.fromChar : (c : Char) -> Text
  /// ```
  public let Char_Text = Prim.charToText;

  /// From base library:
  /// ```motoko no-repl
  /// import Text "mo:base/Text";
  /// Text.Text.fromIter(cs : Iter.Iter<Char>) : Text
  /// ```
  public let Iter_Text = Text.fromIter;

  /// From base library:
  /// ```motoko no-repl
  /// import Text "mo:base/Text";
  /// Text.Text.toArray(t : Text) : [Char]
  /// ```
  public let Text_Array = Text.toArray;

  /// From base library:
  /// ```motoko no-repl
  /// import Text "mo:base/Text";
  /// Text.Text.toIter(t : Text) : Iter.Iter<Char>
  /// ```
  public let Text_Iter = Text.toIter;

  /// From base library:
  /// ```motoko no-repl
  /// import Text "mo:base/Text";
  /// Text.Text.toVarArray(t : Text) : [var Char]
  /// ```
  public let Text_VarArray = Text.toVarArray;

  /// From base library:
  /// ```motoko no-repl
  /// import Trie "mo:base/Trie";
  /// Trie.Trie.fromList<K, V>(kvc : ?Nat, kvs : AssocList<Key<K>, V>, bitpos : Nat) : Trie<K, V>
  /// ```
  public let List_Trie = Trie.fromList;

  /// From base library:
  /// ```motoko no-repl
  /// import Trie "mo:base/Trie";
  /// Trie.Trie.toArray<K, V, W>(t : Trie<K, V>, f : (K, V) -> W) : [W]
  /// ```
  public let Trie_Array = Trie.toArray;

  /// From base library:
  /// ```motoko no-repl
  /// import TrieMap "mo:base/TrieMap";
  /// TrieMap.TrieMap.fromEntries<K, V>(entries : I.Iter<(K, V)>, keyEq : (K, K) -> Bool, keyHash : K -> Hash.Hash) : TrieMap<K, V>
  /// ```
  public let Entries_TrieMap = TrieMap.fromEntries;

  /// From base library:
  /// ```motoko no-repl
  /// import TrieSet "mo:base/TrieSet";
  /// TrieSet.TrieSet.fromArray<T>(arr : [T], elemHash : T -> Hash, eq : (T, T) -> Bool) : Set<T>
  /// ```
  public let Array_TrieSet = TrieSet.fromArray;

  /// From base library:
  /// ```motoko no-repl
  /// import TrieSet "mo:base/TrieSet";
  /// TrieSet.TrieSet.toArray<T>(s : Set<T>) : [T]
  /// ```
  public let TrieSet_Array = TrieSet.toArray;
};
