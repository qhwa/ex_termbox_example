This is an example repository to show an issue on escript and NIF loading. 

## How to reproduce

```sh
mix escript.build && ./ex_termbox_example
```

## Running with NIF-embeded version ex_termbox

```sh
git checkout embed_nif
cd deps/ex_termbox/c_src && git submodule update --init && cd -
mix escript.build && ./ex_termbox_example
```
