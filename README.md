# hello_world

[![Package Version](https://img.shields.io/hexpm/v/hello_world)](https://hex.pm/packages/hello_world)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/hello_world/)

```sh
gleam add hello_world@1
```
```gleam
import hello_world

pub fn main() {
  // TODO: An example of the project in use
}
```

Further documentation can be found at <https://hexdocs.pm/hello_world>.

## Development

```sh
gleam run   # Run the project
gleam test  # Run the tests
```

## Add dependencies

Example:

```sh
gleam add gleam_erlang

gleam add gleam_stdlib

gleam update
```