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
      /// Blob.Blob.toArrayMut(blob : Blob) : [var Nat8]
      /// ```
      public let ofBlob = Prim.blobToArrayMut;
      /// From base library:
      /// ```motoko no-repl
      /// import Iter "mo:base/Iter";
      /// Iter.Iter.toArrayMut<A>(xs : Iter<A>) : [var A]
      /// ```
      public let ofIter = Iter_.toArrayMut;
    };

    /// Conversions to the `Array` type.
    public module Array {
      /// From base library:
      /// ```motoko no-repl
      /// import Blob "mo:base/Blob";
      /// Blob.Blob.toArray(blob : Blob) : [Nat8]
      /// ```
      public let ofBlob = Prim.blobToArray;
      /// From base library:
      /// ```motoko no-repl
      /// import Buffer "mo:base/Buffer";
      /// Buffer.Buffer.toArray<X>(buffer : Buffer<X>) : [X]
      /// ```
      public let ofBuffer = Buffer_.toArray;
      /// From base library:
      /// ```motoko no-repl
      /// import Iter "mo:base/Iter";
      /// Iter.Iter.toArray<A>(xs : Iter<A>) : [A]
      /// ```
      public let ofIter = Iter_.toArray;
      /// From base library:
      /// ```motoko no-repl
      /// import List "mo:base/List";
      /// List.List.toArray<T>(xs : List<T>) : [T]
      /// ```
      public let ofList = List_.toArray;
      /// From base library:
      /// ```motoko no-repl
      /// import Text "mo:base/Text";
      /// Text.Text.toArray(t : Text) : [Char]
      /// ```
      public let ofText = Text_.toArray;
      /// From base library:
      /// ```motoko no-repl
      /// import Trie "mo:base/Trie";
      /// Trie.Trie.toArray<K, V, W>(t : Trie<K, V>, f : (K, V) -> W) : [W]
      /// ```
      public let ofTrie = Trie_.toArray;
      /// From base library:
      /// ```motoko no-repl
      /// import TrieSet "mo:base/TrieSet";
      /// TrieSet.TrieSet.toArray<T>(s : Set<T>) : [T]
      /// ```
      public let ofTrieSet = TrieSet_.toArray;
    };

    /// Conversions to the `Blob` type.
    public module Blob {
      /// From base library:
      /// ```motoko no-repl
      /// import Blob "mo:base/Blob";
      /// Blob.Blob.fromArray(bytes : [Nat8]) : Blob
      /// ```
      public let ofArray = Prim.arrayToBlob;
      /// From base library:
      /// ```motoko no-repl
      /// import Blob "mo:base/Blob";
      /// Blob.Blob.fromArrayMut(bytes : [var Nat8]) : Blob
      /// ```
      public let ofArrayMut = Prim.arrayMutToBlob;
      /// From base library:
      /// ```motoko no-repl
      /// import Principal "mo:base/Principal";
      /// Principal.Principal.toBlob(p : Principal) : Blob
      /// ```
      public let ofPrincipal = Prim.blobOfPrincipal;
    };

    /// Conversions to the `Buffer` type.
    public module Buffer {
      /// From base library:
      /// ```motoko no-repl
      /// import Buffer "mo:base/Buffer";
      /// Buffer.Buffer.fromArray<X>(array : [X]) : Buffer<X>
      /// ```
      public let ofArray = Buffer_.fromArray;
      /// From base library:
      /// ```motoko no-repl
      /// import Buffer "mo:base/Buffer";
      /// Buffer.Buffer.fromIter<X>(iter : { next : () -> ?X }) : Buffer<X>
      /// ```
      public let ofIter = Buffer_.fromIter;
      /// From base library:
      /// ```motoko no-repl
      /// import Buffer "mo:base/Buffer";
      /// Buffer.Buffer.fromVarArray<X>(array : [var X]) : Buffer<X>
      /// ```
      public let ofVarArray = Buffer_.fromVarArray;
    };

    /// Conversions to the `Char` type.
    public module Char {
      /// From base library:
      /// ```motoko no-repl
      /// import Char "mo:base/Char";
      /// Char.Char.fromNat32 : (w : Nat32) -> Char
      /// ```
      public let ofNat32 = Prim.nat32ToChar;
    };

    /// Conversions to the `Float` type.
    public module Float {
      /// From base library:
      /// ```motoko no-repl
      /// import Float "mo:base/Float";
      /// Float.Float.fromInt : Int -> Float
      /// ```
      public let ofInt = Prim.intToFloat;
      /// From base library:
      /// ```motoko no-repl
      /// import Float "mo:base/Float";
      /// Float.Float.fromInt64 : Int64 -> Float
      /// ```
      public let ofInt64 = Prim.int64ToFloat;
    };

    /// Conversions to the `HashMap` type.
    public module HashMap {
      /// From base library:
      /// ```motoko no-repl
      /// import HashMap "mo:base/HashMap";
      /// HashMap.HashMap.fromIter<K, V>(iter : Iter.Iter<(K, V)>, initCapacity : Nat, keyEq : (K, K) -> Bool, keyHash : K -> Hash.Hash) : HashMap<K, V>
      /// ```
      public let ofIter = HashMap_.fromIter;
    };

    /// Conversions to the `Heap` type.
    public module Heap {
      /// From base library:
      /// ```motoko no-repl
      /// import Heap "mo:base/Heap";
      /// Heap.Heap.fromIter<X>(iter : I.Iter<X>, compare : (X, X) -> O.Order) : Heap<X>
      /// ```
      public let ofIter = Heap_.fromIter;
    };

    /// Conversions to the `Int16` type.
    public module Int16 {
      /// From base library:
      /// ```motoko no-repl
      /// import Int16 "mo:base/Int16";
      /// Int16.Int16.fromInt : Int -> Int16
      /// ```
      public let ofInt = Prim.intToInt16;
      /// From base library:
      /// ```motoko no-repl
      /// import Int16 "mo:base/Int16";
      /// Int16.Int16.fromIntWrap : Int -> Int16
      /// ```
      public let ofIntWrap = Int16_.fromIntWrap;
      /// From base library:
      /// ```motoko no-repl
      /// import Int16 "mo:base/Int16";
      /// Int16.Int16.fromNat16 : Nat16 -> Int16
      /// ```
      public let ofNat16 = Prim.nat16ToInt16;
    };

    /// Conversions to the `Int32` type.
    public module Int32 {
      /// From base library:
      /// ```motoko no-repl
      /// import Int32 "mo:base/Int32";
      /// Int32.Int32.fromInt : Int -> Int32
      /// ```
      public let ofInt = Prim.intToInt32;
      /// From base library:
      /// ```motoko no-repl
      /// import Int32 "mo:base/Int32";
      /// Int32.Int32.fromIntWrap : Int -> Int32
      /// ```
      public let ofIntWrap = Int32_.fromIntWrap;
      /// From base library:
      /// ```motoko no-repl
      /// import Int32 "mo:base/Int32";
      /// Int32.Int32.fromNat32 : Nat32 -> Int32
      /// ```
      public let ofNat32 = Prim.nat32ToInt32;
    };

    /// Conversions to the `Int64` type.
    public module Int64 {
      /// From base library:
      /// ```motoko no-repl
      /// import Int64 "mo:base/Int64";
      /// Int64.Int64.fromInt : Int -> Int64
      /// ```
      public let ofInt = Prim.intToInt64;
      /// From base library:
      /// ```motoko no-repl
      /// import Int64 "mo:base/Int64";
      /// Int64.Int64.fromIntWrap : Int -> Int64
      /// ```
      public let ofIntWrap = Int64_.fromIntWrap;
      /// From base library:
      /// ```motoko no-repl
      /// import Int64 "mo:base/Int64";
      /// Int64.Int64.fromNat64 : Nat64 -> Int64
      /// ```
      public let ofNat64 = Prim.nat64ToInt64;
      /// From base library:
      /// ```motoko no-repl
      /// import Float "mo:base/Float";
      /// Float.Float.toInt64 : Float -> Int64
      /// ```
      public let ofFloat = Prim.floatToInt64;
    };

    /// Conversions to the `Int8` type.
    public module Int8 {
      /// From base library:
      /// ```motoko no-repl
      /// import Int8 "mo:base/Int8";
      /// Int8.Int8.fromInt : Int -> Int8
      /// ```
      public let ofInt = Prim.intToInt8;
      /// From base library:
      /// ```motoko no-repl
      /// import Int8 "mo:base/Int8";
      /// Int8.Int8.fromIntWrap : Int -> Int8
      /// ```
      public let ofIntWrap = Int8_.fromIntWrap;
      /// From base library:
      /// ```motoko no-repl
      /// import Int8 "mo:base/Int8";
      /// Int8.Int8.fromNat8 : Nat8 -> Int8
      /// ```
      public let ofNat8 = Prim.nat8ToInt8;
    };

    /// Conversions to the `Int` type.
    public module Int {
      /// From base library:
      /// ```motoko no-repl
      /// import Float "mo:base/Float";
      /// Float.Float.toInt : Float -> Int
      /// ```
      public let ofFloat = Prim.floatToInt;
      /// From base library:
      /// ```motoko no-repl
      /// import Int16 "mo:base/Int16";
      /// Int16.Int16.toInt : Int16 -> Int
      /// ```
      public let ofInt16 = Prim.int16ToInt;
      /// From base library:
      /// ```motoko no-repl
      /// import Int32 "mo:base/Int32";
      /// Int32.Int32.toInt : Int32 -> Int
      /// ```
      public let ofInt32 = Prim.int32ToInt;
      /// From base library:
      /// ```motoko no-repl
      /// import Int64 "mo:base/Int64";
      /// Int64.Int64.toInt : Int64 -> Int
      /// ```
      public let ofInt64 = Prim.int64ToInt;
      /// From base library:
      /// ```motoko no-repl
      /// import Int8 "mo:base/Int8";
      /// Int8.Int8.toInt : Int8 -> Int
      /// ```
      public let ofInt8 = Prim.int8ToInt;
    };

    /// Conversions to the `Iter` type.
    public module Iter {
      /// From base library:
      /// ```motoko no-repl
      /// import Iter "mo:base/Iter";
      /// Iter.Iter.fromArray<A>(xs : [A]) : Iter<A>
      /// ```
      public let ofArray = Iter_.fromArray;
      /// From base library:
      /// ```motoko no-repl
      /// import Iter "mo:base/Iter";
      /// Iter.Iter.fromArrayMut<A>(xs : [var A]) : Iter<A>
      /// ```
      public let ofArrayMut = Iter_.fromArrayMut;
      /// From base library:
      /// ```motoko no-repl
      /// import List "mo:base/List";
      /// List.List.toIter<T>(xs : List<T>) : Iter.Iter<T>
      /// ```
      public let ofList = List_.toIter;
      /// From base library:
      /// ```motoko no-repl
      /// import Text "mo:base/Text";
      /// Text.Text.toIter(t : Text) : Iter.Iter<Char>
      /// ```
      public let ofText = Text_.toIter;
    };

    /// Conversions to the `List` type.
    public module List {
      /// From base library:
      /// ```motoko no-repl
      /// import List "mo:base/List";
      /// List.List.fromArray<T>(xs : [T]) : List<T>
      /// ```
      public let ofArray = List_.fromArray;
      /// From base library:
      /// ```motoko no-repl
      /// import List "mo:base/List";
      /// List.List.fromVarArray<T>(xs : [var T]) : List<T>
      /// ```
      public let ofVarArray = List_.fromVarArray;
      /// From base library:
      /// ```motoko no-repl
      /// import Iter "mo:base/Iter";
      /// Iter.Iter.toList<A>(xs : Iter<A>) : List.List<A>
      /// ```
      public let ofIter = Iter_.toList;
    };

    /// Conversions to the `Nat16` type.
    public module Nat16 {
      /// From base library:
      /// ```motoko no-repl
      /// import Nat16 "mo:base/Nat16";
      /// Nat16.Nat16.fromIntWrap : Int -> Nat16
      /// ```
      public let ofIntWrap = Nat16_.fromIntWrap;
      /// From base library:
      /// ```motoko no-repl
      /// import Nat16 "mo:base/Nat16";
      /// Nat16.Nat16.fromNat : Nat -> Nat16
      /// ```
      public let ofNat = Prim.natToNat16;
      /// From base library:
      /// ```motoko no-repl
      /// import Int16 "mo:base/Int16";
      /// Int16.Int16.toNat16 : Int16 -> Nat16
      /// ```
      public let ofInt16 = Prim.int16ToNat16;
    };

    /// Conversions to the `Nat32` type.
    public module Nat32 {
      /// From base library:
      /// ```motoko no-repl
      /// import Nat32 "mo:base/Nat32";
      /// Nat32.Nat32.fromIntWrap : Int -> Nat32
      /// ```
      public let ofIntWrap = Nat32_.fromIntWrap;
      /// From base library:
      /// ```motoko no-repl
      /// import Nat32 "mo:base/Nat32";
      /// Nat32.Nat32.fromNat : Nat -> Nat32
      /// ```
      public let ofNat = Prim.natToNat32;
      /// From base library:
      /// ```motoko no-repl
      /// import Char "mo:base/Char";
      /// Char.Char.toNat32 : (c : Char) -> Nat32
      /// ```
      public let ofChar = Prim.charToNat32;
      /// From base library:
      /// ```motoko no-repl
      /// import Int32 "mo:base/Int32";
      /// Int32.Int32.toNat32 : Int32 -> Nat32
      /// ```
      public let ofInt32 = Prim.int32ToNat32;
    };

    /// Conversions to the `Nat64` type.
    public module Nat64 {
      /// From base library:
      /// ```motoko no-repl
      /// import Nat64 "mo:base/Nat64";
      /// Nat64.Nat64.fromIntWrap : Int -> Nat64
      /// ```
      public let ofIntWrap = Nat64_.fromIntWrap;
      /// From base library:
      /// ```motoko no-repl
      /// import Nat64 "mo:base/Nat64";
      /// Nat64.Nat64.fromNat : Nat -> Nat64
      /// ```
      public let ofNat = Prim.natToNat64;
      /// From base library:
      /// ```motoko no-repl
      /// import Int64 "mo:base/Int64";
      /// Int64.Int64.toNat64 : Int64 -> Nat64
      /// ```
      public let ofInt64 = Prim.int64ToNat64;
    };

    /// Conversions to the `Nat8` type.
    public module Nat8 {
      /// From base library:
      /// ```motoko no-repl
      /// import Nat8 "mo:base/Nat8";
      /// Nat8.Nat8.fromIntWrap : Int -> Nat8
      /// ```
      public let ofIntWrap = Nat8_.fromIntWrap;
      /// From base library:
      /// ```motoko no-repl
      /// import Nat8 "mo:base/Nat8";
      /// Nat8.Nat8.fromNat : Nat -> Nat8
      /// ```
      public let ofNat = Prim.natToNat8;
      /// From base library:
      /// ```motoko no-repl
      /// import Int8 "mo:base/Int8";
      /// Int8.Int8.toNat8 : Int8 -> Nat8
      /// ```
      public let ofInt8 = Prim.int8ToNat8;
    };

    /// Conversions to the `Nat` type.
    public module Nat {
      /// From base library:
      /// ```motoko no-repl
      /// import Nat "mo:base/Nat";
      /// Nat.Nat.fromText(text : Text) : ?Nat
      /// ```
      public let ofText = Nat_.fromText;
      /// From base library:
      /// ```motoko no-repl
      /// import Nat16 "mo:base/Nat16";
      /// Nat16.Nat16.toNat : Nat16 -> Nat
      /// ```
      public let ofNat16 = Prim.nat16ToNat;
      /// From base library:
      /// ```motoko no-repl
      /// import Nat32 "mo:base/Nat32";
      /// Nat32.Nat32.toNat : Nat32 -> Nat
      /// ```
      public let ofNat32 = Prim.nat32ToNat;
      /// From base library:
      /// ```motoko no-repl
      /// import Nat64 "mo:base/Nat64";
      /// Nat64.Nat64.toNat : Nat64 -> Nat
      /// ```
      public let ofNat64 = Prim.nat64ToNat;
      /// From base library:
      /// ```motoko no-repl
      /// import Nat8 "mo:base/Nat8";
      /// Nat8.Nat8.toNat : Nat8 -> Nat
      /// ```
      public let ofNat8 = Prim.nat8ToNat;
    };

    /// Conversions to the `Option` type.
    public module Option {
      /// From base library:
      /// ```motoko no-repl
      /// import Result "mo:base/Result";
      /// Result.Result.toOption<R, E>(r : Result<R, E>) : ?R
      /// ```
      public let ofResult = Result_.toOption;
    };

    /// Conversions to the `Principal` type.
    public module Principal {
      /// From base library:
      /// ```motoko no-repl
      /// import Principal "mo:base/Principal";
      /// Principal.Principal.fromActor(a : actor {  }) : Principal
      /// ```
      public let ofActor = Prim.principalOfActor;
      /// From base library:
      /// ```motoko no-repl
      /// import Principal "mo:base/Principal";
      /// Principal.Principal.fromBlob(b : Blob) : Principal
      /// ```
      public let ofBlob = Prim.principalOfBlob;
      /// From base library:
      /// ```motoko no-repl
      /// import Principal "mo:base/Principal";
      /// Principal.Principal.fromText(t : Text) : Principal
      /// ```
      public let ofText = Principal_.fromText;
    };

    /// Conversions to the `Result` type.
    public module Result {
      /// From base library:
      /// ```motoko no-repl
      /// import Result "mo:base/Result";
      /// Result.Result.fromOption<R, E>(x : ?R, err : E) : Result<R, E>
      /// ```
      public let ofOption = Result_.fromOption;
    };

    /// Conversions to the `Text` type.
    public module Text {
      /// From base library:
      /// ```motoko no-repl
      /// import Text "mo:base/Text";
      /// Text.Text.fromChar : (c : Char) -> Text
      /// ```
      public let ofChar = Prim.charToText;
      /// From base library:
      /// ```motoko no-repl
      /// import Text "mo:base/Text";
      /// Text.Text.fromIter(cs : Iter.Iter<Char>) : Text
      /// ```
      public let ofIter = Text_.fromIter;
      /// From base library:
      /// ```motoko no-repl
      /// import Bool "mo:base/Bool";
      /// Bool.Bool.toText(x : Bool) : Text
      /// ```
      public let ofBool = Bool_.toText;
      /// From base library:
      /// ```motoko no-repl
      /// import Buffer "mo:base/Buffer";
      /// Buffer.Buffer.toText<X>(buffer : Buffer<X>, toText : X -> Text) : Text
      /// ```
      public let ofBuffer = Buffer_.toText;
      /// From base library:
      /// ```motoko no-repl
      /// import Float "mo:base/Float";
      /// Float.Float.toText : Float -> Text
      /// ```
      public let ofFloat = Prim.floatToText;
      /// From base library:
      /// ```motoko no-repl
      /// import Int "mo:base/Int";
      /// Int.Int.toText(x : Int) : Text
      /// ```
      public let ofInt = Int_.toText;
      /// From base library:
      /// ```motoko no-repl
      /// import Int16 "mo:base/Int16";
      /// Int16.Int16.toText(x : Int16) : Text
      /// ```
      public let ofInt16 = Int16_.toText;
      /// From base library:
      /// ```motoko no-repl
      /// import Int32 "mo:base/Int32";
      /// Int32.Int32.toText(x : Int32) : Text
      /// ```
      public let ofInt32 = Int32_.toText;
      /// From base library:
      /// ```motoko no-repl
      /// import Int64 "mo:base/Int64";
      /// Int64.Int64.toText(x : Int64) : Text
      /// ```
      public let ofInt64 = Int64_.toText;
      /// From base library:
      /// ```motoko no-repl
      /// import Int8 "mo:base/Int8";
      /// Int8.Int8.toText(x : Int8) : Text
      /// ```
      public let ofInt8 = Int8_.toText;
      /// From base library:
      /// ```motoko no-repl
      /// import Nat "mo:base/Nat";
      /// Nat.Nat.toText(n : Nat) : Text
      /// ```
      public let ofNat = Nat_.toText;
      /// From base library:
      /// ```motoko no-repl
      /// import Nat16 "mo:base/Nat16";
      /// Nat16.Nat16.toText(x : Nat16) : Text
      /// ```
      public let ofNat16 = Nat16_.toText;
      /// From base library:
      /// ```motoko no-repl
      /// import Nat32 "mo:base/Nat32";
      /// Nat32.Nat32.toText(x : Nat32) : Text
      /// ```
      public let ofNat32 = Nat32_.toText;
      /// From base library:
      /// ```motoko no-repl
      /// import Nat64 "mo:base/Nat64";
      /// Nat64.Nat64.toText(x : Nat64) : Text
      /// ```
      public let ofNat64 = Nat64_.toText;
      /// From base library:
      /// ```motoko no-repl
      /// import Nat8 "mo:base/Nat8";
      /// Nat8.Nat8.toText(x : Nat8) : Text
      /// ```
      public let ofNat8 = Nat8_.toText;
      /// From base library:
      /// ```motoko no-repl
      /// import Principal "mo:base/Principal";
      /// Principal.Principal.toText(p : Principal) : Text
      /// ```
      public let ofPrincipal = Principal_.toText;
    };

    /// Conversions to the `TrieMap` type.
    public module TrieMap {
      /// From base library:
      /// ```motoko no-repl
      /// import TrieMap "mo:base/TrieMap";
      /// TrieMap.TrieMap.fromEntries<K, V>(entries : I.Iter<(K, V)>, keyEq : (K, K) -> Bool, keyHash : K -> Hash.Hash) : TrieMap<K, V>
      /// ```
      public let ofEntries = TrieMap_.fromEntries;
    };

    /// Conversions to the `TrieSet` type.
    public module TrieSet {
      /// From base library:
      /// ```motoko no-repl
      /// import TrieSet "mo:base/TrieSet";
      /// TrieSet.TrieSet.fromArray<T>(arr : [T], elemHash : T -> Hash, eq : (T, T) -> Bool) : Set<T>
      /// ```
      public let ofArray = TrieSet_.fromArray;
    };

    /// Conversions to the `Trie` type.
    public module Trie {
      /// From base library:
      /// ```motoko no-repl
      /// import Trie "mo:base/Trie";
      /// Trie.Trie.fromList<K, V>(kvc : ?Nat, kvs : AssocList<Key<K>, V>, bitpos : Nat) : Trie<K, V>
      /// ```
      public let ofList = Trie_.fromList;
    };

    /// Conversions to the `VarArray` type.
    public module VarArray {
      /// From base library:
      /// ```motoko no-repl
      /// import Buffer "mo:base/Buffer";
      /// Buffer.Buffer.toVarArray<X>(buffer : Buffer<X>) : [var X]
      /// ```
      public let ofBuffer = Buffer_.toVarArray;
      /// From base library:
      /// ```motoko no-repl
      /// import List "mo:base/List";
      /// List.List.toVarArray<T>(xs : List<T>) : [var T]
      /// ```
      public let ofList = List_.toVarArray;
      /// From base library:
      /// ```motoko no-repl
      /// import Text "mo:base/Text";
      /// Text.Text.toVarArray(t : Text) : [var Char]
      /// ```
      public let ofText = Text_.toVarArray;
    };
};
