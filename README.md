# `mo-convert` &nbsp;[![npm version](https://img.shields.io/npm/v/mo-convert.svg?logo=npm)](https://www.npmjs.com/package/mo-convert) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT) [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/rvanasa/mo-convert/issues)

> ### Systematic [Motoko](https://github.com/dfinity/motoko#readme) base library type conversions.

---

This repository includes Motoko source code and a JSON metadata file containing all base library type conversions
with a consistent `From_To()` naming convention. `mo-convert` is intended as a stepping stone for community
language tooling and for those such as myself who have trouble remembering whether the function was named `Array.toBuffer()` or `Buffer.fromArray()`.

## Quick Start (Motoko):

Add the following to your [`mops.toml`](https://mops.one/docs/install) config file:

```toml
[dependencies]
convert = "https://github.com/rvanasa/mo-convert"
```

Include the following import in your Motoko source code:

```motoko
import C "mo:convert";
```

Go to town:

```motoko
let nat = 123;
let text = C.Nat_Text(nat); // => "123"

let option = C.Result_Option(#ok true); // => ?true

let array = [1, 2, 3];
let buffer = C.Array_Buffer<Nat>(array);

// Chain conversions with the piping operator
let pipe = (
  array
  |> C.Array_Iter _
  |> C.Iter_List _
  |> C.List_Array _
);
```

## Quick Start (Node.js):

Run the following command to install the `mo-convert` npm package:

```sh
npm i --save-dev mo-convert
```

Access the type conversion metadata:

```js
const { conversions } = require('mo-convert');

console.log('All type conversions:', conversions);
```

Example JSON entry:

```js
conversions[0] ==
{
  from: "Array",
  to: "Blob",
  module: "Blob",
  name: "fromArray",
  signature: "Blob.fromArray(bytes : [Nat8]) : Blob"
},
```
