# GoogleAds

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `google_ads` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:google_ads, "~> 0.2.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/google_ads](https://hexdocs.pm/google_ads).

# Elixir protobuf generation

* version v5 is not supported due to optional proto fields not being supported in proto-buf-elixir plugin

Install protoc tool (OSX)

```bash
brew install protobuf
```
Download proto files definitions: git@github.com:googleapis/googleapis.git

install plugin proto-buf-elixir

```bash
mix escript.install hex protobuf 0.8.1-beta
```

generate from google definitions

```bash
 protoc --elixir_out=plugins=grpc:/Users/kbojcic/Desktop/proto  $(find /Users/kbojcic/dev/vbt/googleapis/google/ads/googleads/v4 -iname "*.proto")  --proto_path=/Users/kbojcic/dev/vbt/googleapis/
```

