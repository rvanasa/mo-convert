import Prim "mo:⛔";
import Bool_ "mo:base/Bool";
import Buffer_ "mo:base/Buffer";
import HashMap_ "mo:base/HashMap";
import Heap_ "mo:base/Heap";
import Int_ "mo:base/Int";
import Int16_ "mo:base/Int16";
import Int32_ "mo:base/Int32";
import Int64_ "mo:base/Int64";
import Int8_ "mo:base/Int8";
import Iter_ "mo:base/Iter";
import List_ "mo:base/List";
import Nat_ "mo:base/Nat";
import Nat16_ "mo:base/Nat16";
import Nat32_ "mo:base/Nat32";
import Nat64_ "mo:base/Nat64";
import Nat8_ "mo:base/Nat8";
import Principal_ "mo:base/Principal";
import Result_ "mo:base/Result";
import Text_ "mo:base/Text";
import Trie_ "mo:base/Trie";
import TrieMap_ "mo:base/TrieMap";
import TrieSet_ "mo:base/TrieSet";

module Convert {
  /// Conversions to the `ArrayMut` type.
  public module ArrayMut {
    /// From base library:
    /// ```motoko no-repl
    /// import Blob "mo:base/Blob";
    /// Blob.toArrayMut(blob : Blob) : [var Nat8]
    /// ```
    public let fromBlob = Prim.blobToArrayMut;
    /// From base library:
    /// ```motoko no-repl
    /// import Iter "mo:base/Iter";
    /// Iter.toArrayMut<A>(xs : Iter<A>) : [var A]
    /// ```
    public let fromIter = Iter_.toArrayMut;
    /// From base library:
    /// ```motoko no-repl
    /// import Blob "mo:base/Blob";
    /// Blob.fromArrayMut(bytes : [var Nat8]) : Blob
    /// ```
    public let toBlob = Prim.arrayMutToBlob;
    /// From base library:
    /// ```motoko no-repl
    /// import Iter "mo:base/Iter";
    /// Iter.fromArrayMut<A>(xs : [var A]) : Iter<A>
    /// ```
    public let toIter = Iter_.fromArrayMut;
  };

  /// Conversions to the `Array` type.
  public module Array {
    /// From base library:
    /// ```motoko no-repl
    /// import Blob "mo:base/Blob";
    /// Blob.toArray(blob : Blob) : [Nat8]
    /// ```
    public let fromBlob = Prim.blobToArray;
    /// From base library:
    /// ```motoko no-repl
    /// import Buffer "mo:base/Buffer";
    /// Buffer.toArray<X>(buffer : Buffer<X>) : [X]
    /// ```
    public let fromBuffer = Buffer_.toArray;
    /// From base library:
    /// ```motoko no-repl
    /// import Iter "mo:base/Iter";
    /// Iter.toArray<A>(xs : Iter<A>) : [A]
    /// ```
    public let fromIter = Iter_.toArray;
    /// From base library:
    /// ```motoko no-repl
    /// import List "mo:base/List";
    /// List.toArray<T>(xs : List<T>) : [T]
    /// ```
    public let fromList = List_.toArray;
    /// From base library:
    /// ```motoko no-repl
    /// import Text "mo:base/Text";
    /// Text.toArray(t : Text) : [Char]
    /// ```
    public let fromText = Text_.toArray;
    /// From base library:
    /// ```motoko no-repl
    /// import Trie "mo:base/Trie";
    /// Trie.toArray<K, V, W>(t : Trie<K, V>, f : (K, V) -> W) : [W]
    /// ```
    public let fromTrie = Trie_.toArray;
    /// From base library:
    /// ```motoko no-repl
    /// import TrieSet "mo:base/TrieSet";
    /// TrieSet.toArray<T>(s : Set<T>) : [T]
    /// ```
    public let fromTrieSet = TrieSet_.toArray;
    /// From base library:
    /// ```motoko no-repl
    /// import Blob "mo:base/Blob";
    /// Blob.fromArray(bytes : [Nat8]) : Blob
    /// ```
    public let toBlob = Prim.arrayToBlob;
    /// From base library:
    /// ```motoko no-repl
    /// import Buffer "mo:base/Buffer";
    /// Buffer.fromArray<X>(array : [X]) : Buffer<X>
    /// ```
    public let toBuffer = Buffer_.fromArray;
    /// From base library:
    /// ```motoko no-repl
    /// import Iter "mo:base/Iter";
    /// Iter.fromArray<A>(xs : [A]) : Iter<A>
    /// ```
    public let toIter = Iter_.fromArray;
    /// From base library:
    /// ```motoko no-repl
    /// import List "mo:base/List";
    /// List.fromArray<T>(xs : [T]) : List<T>
    /// ```
    public let toList = List_.fromArray;
    /// From base library:
    /// ```motoko no-repl
    /// import TrieSet "mo:base/TrieSet";
    /// TrieSet.fromArray<T>(arr : [T], elemHash : T -> Hash, eq : (T, T) -> Bool) : Set<T>
    /// ```
    public let toTrieSet = TrieSet_.fromArray;
  };

  /// Conversions to the `Blob` type.
  public module Blob {
    /// From base library:
    /// ```motoko no-repl
    /// import Blob "mo:base/Blob";
    /// Blob.fromArray(bytes : [Nat8]) : Blob
    /// ```
    public let fromArray = Prim.arrayToBlob;
    /// From base library:
    /// ```motoko no-repl
    /// import Blob "mo:base/Blob";
    /// Blob.fromArrayMut(bytes : [var Nat8]) : Blob
    /// ```
    public let fromArrayMut = Prim.arrayMutToBlob;
    /// From base library:
    /// ```motoko no-repl
    /// import Principal "mo:base/Principal";
    /// Principal.toBlob(p : Principal) : Blob
    /// ```
    public let fromPrincipal = Prim.blobOfPrincipal;
    /// From base library:
    /// ```motoko no-repl
    /// import Principal "mo:base/Principal";
    /// Principal.fromBlob(b : Blob) : Principal
    /// ```
    public let toPrincipal = Prim.principalOfBlob;
    /// From base library:
    /// ```motoko no-repl
    /// import Blob "mo:base/Blob";
    /// Blob.toArray(blob : Blob) : [Nat8]
    /// ```
    public let toArray = Prim.blobToArray;
    /// From base library:
    /// ```motoko no-repl
    /// import Blob "mo:base/Blob";
    /// Blob.toArrayMut(blob : Blob) : [var Nat8]
    /// ```
    public let toArrayMut = Prim.blobToArrayMut;
  };

  /// Conversions to the `Buffer` type.
  public module Buffer {
    /// From base library:
    /// ```motoko no-repl
    /// import Buffer "mo:base/Buffer";
    /// Buffer.fromArray<X>(array : [X]) : Buffer<X>
    /// ```
    public let fromArray = Buffer_.fromArray;
    /// From base library:
    /// ```motoko no-repl
    /// import Buffer "mo:base/Buffer";
    /// Buffer.fromIter<X>(iter : { next : () -> ?X }) : Buffer<X>
    /// ```
    public let fromIter = Buffer_.fromIter;
    /// From base library:
    /// ```motoko no-repl
    /// import Buffer "mo:base/Buffer";
    /// Buffer.fromVarArray<X>(array : [var X]) : Buffer<X>
    /// ```
    public let fromVarArray = Buffer_.fromVarArray;
    /// From base library:
    /// ```motoko no-repl
    /// import Buffer "mo:base/Buffer";
    /// Buffer.toArray<X>(buffer : Buffer<X>) : [X]
    /// ```
    public let toArray = Buffer_.toArray;
    /// From base library:
    /// ```motoko no-repl
    /// import Buffer "mo:base/Buffer";
    /// Buffer.toText<X>(buffer : Buffer<X>, toText : X -> Text) : Text
    /// ```
    public let toText = Buffer_.toText;
    /// From base library:
    /// ```motoko no-repl
    /// import Buffer "mo:base/Buffer";
    /// Buffer.toVarArray<X>(buffer : Buffer<X>) : [var X]
    /// ```
    public let toVarArray = Buffer_.toVarArray;
  };

  /// Conversions to the `Char` type.
  public module Char {
    /// From base library:
    /// ```motoko no-repl
    /// import Char "mo:base/Char";
    /// Char.fromNat32 : (w : Nat32) -> Char
    /// ```
    public let fromNat32 = Prim.nat32ToChar;
    /// From base library:
    /// ```motoko no-repl
    /// import Text "mo:base/Text";
    /// Text.fromChar : (c : Char) -> Text
    /// ```
    public let toText = Prim.charToText;
    /// From base library:
    /// ```motoko no-repl
    /// import Char "mo:base/Char";
    /// Char.toNat32 : (c : Char) -> Nat32
    /// ```
    public let toNat32 = Prim.charToNat32;
  };

  /// Conversions to the `Float` type.
  public module Float {
    /// From base library:
    /// ```motoko no-repl
    /// import Float "mo:base/Float";
    /// Float.fromInt : Int -> Float
    /// ```
    public let fromInt = Prim.intToFloat;
    /// From base library:
    /// ```motoko no-repl
    /// import Float "mo:base/Float";
    /// Float.fromInt64 : Int64 -> Float
    /// ```
    public let fromInt64 = Prim.int64ToFloat;
    /// From base library:
    /// ```motoko no-repl
    /// import Float "mo:base/Float";
    /// Float.toInt : Float -> Int
    /// ```
    public let toInt = Prim.floatToInt;
    /// From base library:
    /// ```motoko no-repl
    /// import Float "mo:base/Float";
    /// Float.toInt64 : Float -> Int64
    /// ```
    public let toInt64 = Prim.floatToInt64;
    /// From base library:
    /// ```motoko no-repl
    /// import Float "mo:base/Float";
    /// Float.toText : Float -> Text
    /// ```
    public let toText = Prim.floatToText;
  };

  /// Conversions to the `HashMap` type.
  public module HashMap {
    /// From base library:
    /// ```motoko no-repl
    /// import HashMap "mo:base/HashMap";
    /// HashMap.fromIter<K, V>(iter : Iter.Iter<(K, V)>, initCapacity : Nat, keyEq : (K, K) -> Bool, keyHash : K -> Hash.Hash) : HashMap<K, V>
    /// ```
    public let fromIter = HashMap_.fromIter;
  };

  /// Conversions to the `Heap` type.
  public module Heap {
    /// From base library:
    /// ```motoko no-repl
    /// import Heap "mo:base/Heap";
    /// Heap.fromIter<X>(iter : I.Iter<X>, compare : (X, X) -> O.Order) : Heap<X>
    /// ```
    public let fromIter = Heap_.fromIter;
  };

  /// Conversions to the `Int16` type.
  public module Int16 {
    /// From base library:
    /// ```motoko no-repl
    /// import Int16 "mo:base/Int16";
    /// Int16.fromInt : Int -> Int16
    /// ```
    public let fromInt = Prim.intToInt16;
    /// From base library:
    /// ```motoko no-repl
    /// import Int16 "mo:base/Int16";
    /// Int16.fromIntWrap : Int -> Int16
    /// ```
    public let fromIntWrap = Int16_.fromIntWrap;
    /// From base library:
    /// ```motoko no-repl
    /// import Int16 "mo:base/Int16";
    /// Int16.fromNat16 : Nat16 -> Int16
    /// ```
    public let fromNat16 = Prim.nat16ToInt16;
    /// From base library:
    /// ```motoko no-repl
    /// import Int16 "mo:base/Int16";
    /// Int16.toInt : Int16 -> Int
    /// ```
    public let toInt = Prim.int16ToInt;
    /// From base library:
    /// ```motoko no-repl
    /// import Int16 "mo:base/Int16";
    /// Int16.toNat16 : Int16 -> Nat16
    /// ```
    public let toNat16 = Prim.int16ToNat16;
    /// From base library:
    /// ```motoko no-repl
    /// import Int16 "mo:base/Int16";
    /// Int16.toText(x : Int16) : Text
    /// ```
    public let toText = Int16_.toText;
  };

  /// Conversions to the `Int32` type.
  public module Int32 {
    /// From base library:
    /// ```motoko no-repl
    /// import Int32 "mo:base/Int32";
    /// Int32.fromInt : Int -> Int32
    /// ```
    public let fromInt = Prim.intToInt32;
    /// From base library:
    /// ```motoko no-repl
    /// import Int32 "mo:base/Int32";
    /// Int32.fromIntWrap : Int -> Int32
    /// ```
    public let fromIntWrap = Int32_.fromIntWrap;
    /// From base library:
    /// ```motoko no-repl
    /// import Int32 "mo:base/Int32";
    /// Int32.fromNat32 : Nat32 -> Int32
    /// ```
    public let fromNat32 = Prim.nat32ToInt32;
    /// From base library:
    /// ```motoko no-repl
    /// import Int32 "mo:base/Int32";
    /// Int32.toInt : Int32 -> Int
    /// ```
    public let toInt = Prim.int32ToInt;
    /// From base library:
    /// ```motoko no-repl
    /// import Int32 "mo:base/Int32";
    /// Int32.toNat32 : Int32 -> Nat32
    /// ```
    public let toNat32 = Prim.int32ToNat32;
    /// From base library:
    /// ```motoko no-repl
    /// import Int32 "mo:base/Int32";
    /// Int32.toText(x : Int32) : Text
    /// ```
    public let toText = Int32_.toText;
  };

  /// Conversions to the `Int64` type.
  public module Int64 {
    /// From base library:
    /// ```motoko no-repl
    /// import Int64 "mo:base/Int64";
    /// Int64.fromInt : Int -> Int64
    /// ```
    public let fromInt = Prim.intToInt64;
    /// From base library:
    /// ```motoko no-repl
    /// import Int64 "mo:base/Int64";
    /// Int64.fromIntWrap : Int -> Int64
    /// ```
    public let fromIntWrap = Int64_.fromIntWrap;
    /// From base library:
    /// ```motoko no-repl
    /// import Int64 "mo:base/Int64";
    /// Int64.fromNat64 : Nat64 -> Int64
    /// ```
    public let fromNat64 = Prim.nat64ToInt64;
    /// From base library:
    /// ```motoko no-repl
    /// import Float "mo:base/Float";
    /// Float.toInt64 : Float -> Int64
    /// ```
    public let fromFloat = Prim.floatToInt64;
    /// From base library:
    /// ```motoko no-repl
    /// import Float "mo:base/Float";
    /// Float.fromInt64 : Int64 -> Float
    /// ```
    public let toFloat = Prim.int64ToFloat;
    /// From base library:
    /// ```motoko no-repl
    /// import Int64 "mo:base/Int64";
    /// Int64.toInt : Int64 -> Int
    /// ```
    public let toInt = Prim.int64ToInt;
    /// From base library:
    /// ```motoko no-repl
    /// import Int64 "mo:base/Int64";
    /// Int64.toNat64 : Int64 -> Nat64
    /// ```
    public let toNat64 = Prim.int64ToNat64;
    /// From base library:
    /// ```motoko no-repl
    /// import Int64 "mo:base/Int64";
    /// Int64.toText(x : Int64) : Text
    /// ```
    public let toText = Int64_.toText;
  };

  /// Conversions to the `Int8` type.
  public module Int8 {
    /// From base library:
    /// ```motoko no-repl
    /// import Int8 "mo:base/Int8";
    /// Int8.fromInt : Int -> Int8
    /// ```
    public let fromInt = Prim.intToInt8;
    /// From base library:
    /// ```motoko no-repl
    /// import Int8 "mo:base/Int8";
    /// Int8.fromIntWrap : Int -> Int8
    /// ```
    public let fromIntWrap = Int8_.fromIntWrap;
    /// From base library:
    /// ```motoko no-repl
    /// import Int8 "mo:base/Int8";
    /// Int8.fromNat8 : Nat8 -> Int8
    /// ```
    public let fromNat8 = Prim.nat8ToInt8;
    /// From base library:
    /// ```motoko no-repl
    /// import Int8 "mo:base/Int8";
    /// Int8.toInt : Int8 -> Int
    /// ```
    public let toInt = Prim.int8ToInt;
    /// From base library:
    /// ```motoko no-repl
    /// import Int8 "mo:base/Int8";
    /// Int8.toNat8 : Int8 -> Nat8
    /// ```
    public let toNat8 = Prim.int8ToNat8;
    /// From base library:
    /// ```motoko no-repl
    /// import Int8 "mo:base/Int8";
    /// Int8.toText(x : Int8) : Text
    /// ```
    public let toText = Int8_.toText;
  };

  /// Conversions to the `Int` type.
  public module Int {
    /// From base library:
    /// ```motoko no-repl
    /// import Float "mo:base/Float";
    /// Float.toInt : Float -> Int
    /// ```
    public let fromFloat = Prim.floatToInt;
    /// From base library:
    /// ```motoko no-repl
    /// import Int16 "mo:base/Int16";
    /// Int16.toInt : Int16 -> Int
    /// ```
    public let fromInt16 = Prim.int16ToInt;
    /// From base library:
    /// ```motoko no-repl
    /// import Int32 "mo:base/Int32";
    /// Int32.toInt : Int32 -> Int
    /// ```
    public let fromInt32 = Prim.int32ToInt;
    /// From base library:
    /// ```motoko no-repl
    /// import Int64 "mo:base/Int64";
    /// Int64.toInt : Int64 -> Int
    /// ```
    public let fromInt64 = Prim.int64ToInt;
    /// From base library:
    /// ```motoko no-repl
    /// import Int8 "mo:base/Int8";
    /// Int8.toInt : Int8 -> Int
    /// ```
    public let fromInt8 = Prim.int8ToInt;
    /// From base library:
    /// ```motoko no-repl
    /// import Float "mo:base/Float";
    /// Float.fromInt : Int -> Float
    /// ```
    public let toFloat = Prim.intToFloat;
    /// From base library:
    /// ```motoko no-repl
    /// import Int16 "mo:base/Int16";
    /// Int16.fromInt : Int -> Int16
    /// ```
    public let toInt16 = Prim.intToInt16;
    /// From base library:
    /// ```motoko no-repl
    /// import Int32 "mo:base/Int32";
    /// Int32.fromInt : Int -> Int32
    /// ```
    public let toInt32 = Prim.intToInt32;
    /// From base library:
    /// ```motoko no-repl
    /// import Int64 "mo:base/Int64";
    /// Int64.fromInt : Int -> Int64
    /// ```
    public let toInt64 = Prim.intToInt64;
    /// From base library:
    /// ```motoko no-repl
    /// import Int8 "mo:base/Int8";
    /// Int8.fromInt : Int -> Int8
    /// ```
    public let toInt8 = Prim.intToInt8;
    /// From base library:
    /// ```motoko no-repl
    /// import Int "mo:base/Int";
    /// Int.toText(x : Int) : Text
    /// ```
    public let toText = Int_.toText;
  };

  /// Conversions to the `Iter` type.
  public module Iter {
    /// From base library:
    /// ```motoko no-repl
    /// import Iter "mo:base/Iter";
    /// Iter.fromArray<A>(xs : [A]) : Iter<A>
    /// ```
    public let fromArray = Iter_.fromArray;
    /// From base library:
    /// ```motoko no-repl
    /// import Iter "mo:base/Iter";
    /// Iter.fromArrayMut<A>(xs : [var A]) : Iter<A>
    /// ```
    public let fromArrayMut = Iter_.fromArrayMut;
    /// From base library:
    /// ```motoko no-repl
    /// import List "mo:base/List";
    /// List.toIter<T>(xs : List<T>) : Iter.Iter<T>
    /// ```
    public let fromList = List_.toIter;
    /// From base library:
    /// ```motoko no-repl
    /// import Text "mo:base/Text";
    /// Text.toIter(t : Text) : Iter.Iter<Char>
    /// ```
    public let fromText = Text_.toIter;
    /// From base library:
    /// ```motoko no-repl
    /// import Buffer "mo:base/Buffer";
    /// Buffer.fromIter<X>(iter : { next : () -> ?X }) : Buffer<X>
    /// ```
    public let toBuffer = Buffer_.fromIter;
    /// From base library:
    /// ```motoko no-repl
    /// import HashMap "mo:base/HashMap";
    /// HashMap.fromIter<K, V>(iter : Iter.Iter<(K, V)>, initCapacity : Nat, keyEq : (K, K) -> Bool, keyHash : K -> Hash.Hash) : HashMap<K, V>
    /// ```
    public let toHashMap = HashMap_.fromIter;
    /// From base library:
    /// ```motoko no-repl
    /// import Heap "mo:base/Heap";
    /// Heap.fromIter<X>(iter : I.Iter<X>, compare : (X, X) -> O.Order) : Heap<X>
    /// ```
    public let toHeap = Heap_.fromIter;
    /// From base library:
    /// ```motoko no-repl
    /// import Text "mo:base/Text";
    /// Text.fromIter(cs : Iter.Iter<Char>) : Text
    /// ```
    public let toText = Text_.fromIter;
    /// From base library:
    /// ```motoko no-repl
    /// import Iter "mo:base/Iter";
    /// Iter.toArray<A>(xs : Iter<A>) : [A]
    /// ```
    public let toArray = Iter_.toArray;
    /// From base library:
    /// ```motoko no-repl
    /// import Iter "mo:base/Iter";
    /// Iter.toArrayMut<A>(xs : Iter<A>) : [var A]
    /// ```
    public let toArrayMut = Iter_.toArrayMut;
    /// From base library:
    /// ```motoko no-repl
    /// import Iter "mo:base/Iter";
    /// Iter.toList<A>(xs : Iter<A>) : List.List<A>
    /// ```
    public let toList = Iter_.toList;
  };

  /// Conversions to the `List` type.
  public module List {
    /// From base library:
    /// ```motoko no-repl
    /// import List "mo:base/List";
    /// List.fromArray<T>(xs : [T]) : List<T>
    /// ```
    public let fromArray = List_.fromArray;
    /// From base library:
    /// ```motoko no-repl
    /// import List "mo:base/List";
    /// List.fromVarArray<T>(xs : [var T]) : List<T>
    /// ```
    public let fromVarArray = List_.fromVarArray;
    /// From base library:
    /// ```motoko no-repl
    /// import Iter "mo:base/Iter";
    /// Iter.toList<A>(xs : Iter<A>) : List.List<A>
    /// ```
    public let fromIter = Iter_.toList;
    /// From base library:
    /// ```motoko no-repl
    /// import Trie "mo:base/Trie";
    /// Trie.fromList<K, V>(kvc : ?Nat, kvs : AssocList<Key<K>, V>, bitpos : Nat) : Trie<K, V>
    /// ```
    public let toTrie = Trie_.fromList;
    /// From base library:
    /// ```motoko no-repl
    /// import List "mo:base/List";
    /// List.toArray<T>(xs : List<T>) : [T]
    /// ```
    public let toArray = List_.toArray;
    /// From base library:
    /// ```motoko no-repl
    /// import List "mo:base/List";
    /// List.toIter<T>(xs : List<T>) : Iter.Iter<T>
    /// ```
    public let toIter = List_.toIter;
    /// From base library:
    /// ```motoko no-repl
    /// import List "mo:base/List";
    /// List.toVarArray<T>(xs : List<T>) : [var T]
    /// ```
    public let toVarArray = List_.toVarArray;
  };

  /// Conversions to the `Nat16` type.
  public module Nat16 {
    /// From base library:
    /// ```motoko no-repl
    /// import Nat16 "mo:base/Nat16";
    /// Nat16.fromIntWrap : Int -> Nat16
    /// ```
    public let fromIntWrap = Nat16_.fromIntWrap;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat16 "mo:base/Nat16";
    /// Nat16.fromNat : Nat -> Nat16
    /// ```
    public let fromNat = Prim.natToNat16;
    /// From base library:
    /// ```motoko no-repl
    /// import Int16 "mo:base/Int16";
    /// Int16.toNat16 : Int16 -> Nat16
    /// ```
    public let fromInt16 = Prim.int16ToNat16;
    /// From base library:
    /// ```motoko no-repl
    /// import Int16 "mo:base/Int16";
    /// Int16.fromNat16 : Nat16 -> Int16
    /// ```
    public let toInt16 = Prim.nat16ToInt16;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat16 "mo:base/Nat16";
    /// Nat16.toNat : Nat16 -> Nat
    /// ```
    public let toNat = Prim.nat16ToNat;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat16 "mo:base/Nat16";
    /// Nat16.toText(x : Nat16) : Text
    /// ```
    public let toText = Nat16_.toText;
  };

  /// Conversions to the `Nat32` type.
  public module Nat32 {
    /// From base library:
    /// ```motoko no-repl
    /// import Nat32 "mo:base/Nat32";
    /// Nat32.fromIntWrap : Int -> Nat32
    /// ```
    public let fromIntWrap = Nat32_.fromIntWrap;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat32 "mo:base/Nat32";
    /// Nat32.fromNat : Nat -> Nat32
    /// ```
    public let fromNat = Prim.natToNat32;
    /// From base library:
    /// ```motoko no-repl
    /// import Char "mo:base/Char";
    /// Char.toNat32 : (c : Char) -> Nat32
    /// ```
    public let fromChar = Prim.charToNat32;
    /// From base library:
    /// ```motoko no-repl
    /// import Int32 "mo:base/Int32";
    /// Int32.toNat32 : Int32 -> Nat32
    /// ```
    public let fromInt32 = Prim.int32ToNat32;
    /// From base library:
    /// ```motoko no-repl
    /// import Char "mo:base/Char";
    /// Char.fromNat32 : (w : Nat32) -> Char
    /// ```
    public let toChar = Prim.nat32ToChar;
    /// From base library:
    /// ```motoko no-repl
    /// import Int32 "mo:base/Int32";
    /// Int32.fromNat32 : Nat32 -> Int32
    /// ```
    public let toInt32 = Prim.nat32ToInt32;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat32 "mo:base/Nat32";
    /// Nat32.toNat : Nat32 -> Nat
    /// ```
    public let toNat = Prim.nat32ToNat;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat32 "mo:base/Nat32";
    /// Nat32.toText(x : Nat32) : Text
    /// ```
    public let toText = Nat32_.toText;
  };

  /// Conversions to the `Nat64` type.
  public module Nat64 {
    /// From base library:
    /// ```motoko no-repl
    /// import Nat64 "mo:base/Nat64";
    /// Nat64.fromIntWrap : Int -> Nat64
    /// ```
    public let fromIntWrap = Nat64_.fromIntWrap;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat64 "mo:base/Nat64";
    /// Nat64.fromNat : Nat -> Nat64
    /// ```
    public let fromNat = Prim.natToNat64;
    /// From base library:
    /// ```motoko no-repl
    /// import Int64 "mo:base/Int64";
    /// Int64.toNat64 : Int64 -> Nat64
    /// ```
    public let fromInt64 = Prim.int64ToNat64;
    /// From base library:
    /// ```motoko no-repl
    /// import Int64 "mo:base/Int64";
    /// Int64.fromNat64 : Nat64 -> Int64
    /// ```
    public let toInt64 = Prim.nat64ToInt64;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat64 "mo:base/Nat64";
    /// Nat64.toNat : Nat64 -> Nat
    /// ```
    public let toNat = Prim.nat64ToNat;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat64 "mo:base/Nat64";
    /// Nat64.toText(x : Nat64) : Text
    /// ```
    public let toText = Nat64_.toText;
  };

  /// Conversions to the `Nat8` type.
  public module Nat8 {
    /// From base library:
    /// ```motoko no-repl
    /// import Nat8 "mo:base/Nat8";
    /// Nat8.fromIntWrap : Int -> Nat8
    /// ```
    public let fromIntWrap = Nat8_.fromIntWrap;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat8 "mo:base/Nat8";
    /// Nat8.fromNat : Nat -> Nat8
    /// ```
    public let fromNat = Prim.natToNat8;
    /// From base library:
    /// ```motoko no-repl
    /// import Int8 "mo:base/Int8";
    /// Int8.toNat8 : Int8 -> Nat8
    /// ```
    public let fromInt8 = Prim.int8ToNat8;
    /// From base library:
    /// ```motoko no-repl
    /// import Int8 "mo:base/Int8";
    /// Int8.fromNat8 : Nat8 -> Int8
    /// ```
    public let toInt8 = Prim.nat8ToInt8;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat8 "mo:base/Nat8";
    /// Nat8.toNat : Nat8 -> Nat
    /// ```
    public let toNat = Prim.nat8ToNat;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat8 "mo:base/Nat8";
    /// Nat8.toText(x : Nat8) : Text
    /// ```
    public let toText = Nat8_.toText;
  };

  /// Conversions to the `Nat` type.
  public module Nat {
    /// From base library:
    /// ```motoko no-repl
    /// import Nat "mo:base/Nat";
    /// Nat.fromText(text : Text) : ?Nat
    /// ```
    public let fromText = Nat_.fromText;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat16 "mo:base/Nat16";
    /// Nat16.toNat : Nat16 -> Nat
    /// ```
    public let fromNat16 = Prim.nat16ToNat;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat32 "mo:base/Nat32";
    /// Nat32.toNat : Nat32 -> Nat
    /// ```
    public let fromNat32 = Prim.nat32ToNat;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat64 "mo:base/Nat64";
    /// Nat64.toNat : Nat64 -> Nat
    /// ```
    public let fromNat64 = Prim.nat64ToNat;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat8 "mo:base/Nat8";
    /// Nat8.toNat : Nat8 -> Nat
    /// ```
    public let fromNat8 = Prim.nat8ToNat;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat16 "mo:base/Nat16";
    /// Nat16.fromNat : Nat -> Nat16
    /// ```
    public let toNat16 = Prim.natToNat16;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat32 "mo:base/Nat32";
    /// Nat32.fromNat : Nat -> Nat32
    /// ```
    public let toNat32 = Prim.natToNat32;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat64 "mo:base/Nat64";
    /// Nat64.fromNat : Nat -> Nat64
    /// ```
    public let toNat64 = Prim.natToNat64;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat8 "mo:base/Nat8";
    /// Nat8.fromNat : Nat -> Nat8
    /// ```
    public let toNat8 = Prim.natToNat8;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat "mo:base/Nat";
    /// Nat.toText(n : Nat) : Text
    /// ```
    public let toText = Nat_.toText;
  };

  /// Conversions to the `Option` type.
  public module Option {
    /// From base library:
    /// ```motoko no-repl
    /// import Result "mo:base/Result";
    /// Result.toOption<R, E>(r : Result<R, E>) : ?R
    /// ```
    public let fromResult = Result_.toOption;
    /// From base library:
    /// ```motoko no-repl
    /// import Result "mo:base/Result";
    /// Result.fromOption<R, E>(x : ?R, err : E) : Result<R, E>
    /// ```
    public let toResult = Result_.fromOption;
  };

  /// Conversions to the `Principal` type.
  public module Principal {
    /// From base library:
    /// ```motoko no-repl
    /// import Principal "mo:base/Principal";
    /// Principal.fromActor(a : actor {  }) : Principal
    /// ```
    public let fromActor = Prim.principalOfActor;
    /// From base library:
    /// ```motoko no-repl
    /// import Principal "mo:base/Principal";
    /// Principal.fromBlob(b : Blob) : Principal
    /// ```
    public let fromBlob = Prim.principalOfBlob;
    /// From base library:
    /// ```motoko no-repl
    /// import Principal "mo:base/Principal";
    /// Principal.fromText(t : Text) : Principal
    /// ```
    public let fromText = Principal_.fromText;
    /// From base library:
    /// ```motoko no-repl
    /// import Principal "mo:base/Principal";
    /// Principal.toBlob(p : Principal) : Blob
    /// ```
    public let toBlob = Prim.blobOfPrincipal;
    /// From base library:
    /// ```motoko no-repl
    /// import Principal "mo:base/Principal";
    /// Principal.toText(p : Principal) : Text
    /// ```
    public let toText = Principal_.toText;
  };

  /// Conversions to the `Result` type.
  public module Result {
    /// From base library:
    /// ```motoko no-repl
    /// import Result "mo:base/Result";
    /// Result.fromOption<R, E>(x : ?R, err : E) : Result<R, E>
    /// ```
    public let fromOption = Result_.fromOption;
    /// From base library:
    /// ```motoko no-repl
    /// import Result "mo:base/Result";
    /// Result.toOption<R, E>(r : Result<R, E>) : ?R
    /// ```
    public let toOption = Result_.toOption;
  };

  /// Conversions to the `Text` type.
  public module Text {
    /// From base library:
    /// ```motoko no-repl
    /// import Text "mo:base/Text";
    /// Text.fromChar : (c : Char) -> Text
    /// ```
    public let fromChar = Prim.charToText;
    /// From base library:
    /// ```motoko no-repl
    /// import Text "mo:base/Text";
    /// Text.fromIter(cs : Iter.Iter<Char>) : Text
    /// ```
    public let fromIter = Text_.fromIter;
    /// From base library:
    /// ```motoko no-repl
    /// import Bool "mo:base/Bool";
    /// Bool.toText(x : Bool) : Text
    /// ```
    public let fromBool = Bool_.toText;
    /// From base library:
    /// ```motoko no-repl
    /// import Buffer "mo:base/Buffer";
    /// Buffer.toText<X>(buffer : Buffer<X>, toText : X -> Text) : Text
    /// ```
    public let fromBuffer = Buffer_.toText;
    /// From base library:
    /// ```motoko no-repl
    /// import Float "mo:base/Float";
    /// Float.toText : Float -> Text
    /// ```
    public let fromFloat = Prim.floatToText;
    /// From base library:
    /// ```motoko no-repl
    /// import Int "mo:base/Int";
    /// Int.toText(x : Int) : Text
    /// ```
    public let fromInt = Int_.toText;
    /// From base library:
    /// ```motoko no-repl
    /// import Int16 "mo:base/Int16";
    /// Int16.toText(x : Int16) : Text
    /// ```
    public let fromInt16 = Int16_.toText;
    /// From base library:
    /// ```motoko no-repl
    /// import Int32 "mo:base/Int32";
    /// Int32.toText(x : Int32) : Text
    /// ```
    public let fromInt32 = Int32_.toText;
    /// From base library:
    /// ```motoko no-repl
    /// import Int64 "mo:base/Int64";
    /// Int64.toText(x : Int64) : Text
    /// ```
    public let fromInt64 = Int64_.toText;
    /// From base library:
    /// ```motoko no-repl
    /// import Int8 "mo:base/Int8";
    /// Int8.toText(x : Int8) : Text
    /// ```
    public let fromInt8 = Int8_.toText;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat "mo:base/Nat";
    /// Nat.toText(n : Nat) : Text
    /// ```
    public let fromNat = Nat_.toText;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat16 "mo:base/Nat16";
    /// Nat16.toText(x : Nat16) : Text
    /// ```
    public let fromNat16 = Nat16_.toText;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat32 "mo:base/Nat32";
    /// Nat32.toText(x : Nat32) : Text
    /// ```
    public let fromNat32 = Nat32_.toText;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat64 "mo:base/Nat64";
    /// Nat64.toText(x : Nat64) : Text
    /// ```
    public let fromNat64 = Nat64_.toText;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat8 "mo:base/Nat8";
    /// Nat8.toText(x : Nat8) : Text
    /// ```
    public let fromNat8 = Nat8_.toText;
    /// From base library:
    /// ```motoko no-repl
    /// import Principal "mo:base/Principal";
    /// Principal.toText(p : Principal) : Text
    /// ```
    public let fromPrincipal = Principal_.toText;
    /// From base library:
    /// ```motoko no-repl
    /// import Nat "mo:base/Nat";
    /// Nat.fromText(text : Text) : ?Nat
    /// ```
    public let toNat = Nat_.fromText;
    /// From base library:
    /// ```motoko no-repl
    /// import Principal "mo:base/Principal";
    /// Principal.fromText(t : Text) : Principal
    /// ```
    public let toPrincipal = Principal_.fromText;
    /// From base library:
    /// ```motoko no-repl
    /// import Text "mo:base/Text";
    /// Text.toArray(t : Text) : [Char]
    /// ```
    public let toArray = Text_.toArray;
    /// From base library:
    /// ```motoko no-repl
    /// import Text "mo:base/Text";
    /// Text.toIter(t : Text) : Iter.Iter<Char>
    /// ```
    public let toIter = Text_.toIter;
    /// From base library:
    /// ```motoko no-repl
    /// import Text "mo:base/Text";
    /// Text.toVarArray(t : Text) : [var Char]
    /// ```
    public let toVarArray = Text_.toVarArray;
  };

  /// Conversions to the `TrieMap` type.
  public module TrieMap {
    /// From base library:
    /// ```motoko no-repl
    /// import TrieMap "mo:base/TrieMap";
    /// TrieMap.fromEntries<K, V>(entries : I.Iter<(K, V)>, keyEq : (K, K) -> Bool, keyHash : K -> Hash.Hash) : TrieMap<K, V>
    /// ```
    public let fromEntries = TrieMap_.fromEntries;
  };

  /// Conversions to the `TrieSet` type.
  public module TrieSet {
    /// From base library:
    /// ```motoko no-repl
    /// import TrieSet "mo:base/TrieSet";
    /// TrieSet.fromArray<T>(arr : [T], elemHash : T -> Hash, eq : (T, T) -> Bool) : Set<T>
    /// ```
    public let fromArray = TrieSet_.fromArray;
    /// From base library:
    /// ```motoko no-repl
    /// import TrieSet "mo:base/TrieSet";
    /// TrieSet.toArray<T>(s : Set<T>) : [T]
    /// ```
    public let toArray = TrieSet_.toArray;
  };

  /// Conversions to the `Trie` type.
  public module Trie {
    /// From base library:
    /// ```motoko no-repl
    /// import Trie "mo:base/Trie";
    /// Trie.fromList<K, V>(kvc : ?Nat, kvs : AssocList<Key<K>, V>, bitpos : Nat) : Trie<K, V>
    /// ```
    public let fromList = Trie_.fromList;
    /// From base library:
    /// ```motoko no-repl
    /// import Trie "mo:base/Trie";
    /// Trie.toArray<K, V, W>(t : Trie<K, V>, f : (K, V) -> W) : [W]
    /// ```
    public let toArray = Trie_.toArray;
  };

  /// Conversions to the `VarArray` type.
  public module VarArray {
    /// From base library:
    /// ```motoko no-repl
    /// import Buffer "mo:base/Buffer";
    /// Buffer.toVarArray<X>(buffer : Buffer<X>) : [var X]
    /// ```
    public let fromBuffer = Buffer_.toVarArray;
    /// From base library:
    /// ```motoko no-repl
    /// import List "mo:base/List";
    /// List.toVarArray<T>(xs : List<T>) : [var T]
    /// ```
    public let fromList = List_.toVarArray;
    /// From base library:
    /// ```motoko no-repl
    /// import Text "mo:base/Text";
    /// Text.toVarArray(t : Text) : [var Char]
    /// ```
    public let fromText = Text_.toVarArray;
    /// From base library:
    /// ```motoko no-repl
    /// import Buffer "mo:base/Buffer";
    /// Buffer.fromVarArray<X>(array : [var X]) : Buffer<X>
    /// ```
    public let toBuffer = Buffer_.fromVarArray;
    /// From base library:
    /// ```motoko no-repl
    /// import List "mo:base/List";
    /// List.fromVarArray<T>(xs : [var T]) : List<T>
    /// ```
    public let toList = List_.fromVarArray;
  };
};
