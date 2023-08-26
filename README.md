# `mo-convert`

> ### Systematic [Motoko](https://github.com/dfinity/motoko) base library type conversions.

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

assert C.Nat_Text(123) == "123";

assert C.Result_Option(#ok true) == ?true;
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