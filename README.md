# ElixirLs Umbrella Issue

This repo aims to reproduce a weird dependency error in Umbrella app. This errors seems to happen only for ElixirLS (using VS Code with [JakeBecker.elixir-ls](https://marketplace.visualstudio.com/items?itemName=JakeBecker.elixir-ls) extension), neither dyalizer, credo or mix compile gives this warning.

## Whatn happen

Once imported `Common.Lib` from `apps/common/lib/common/lib.ex` (for example in `non_phx_app`'s `NonPhxApp.Application` or `app_web`'s `AppWebWeb.Router` module), I got the following warning:

```
Common.Lib.foo/0 defined in application :common is used by the current application but the current application does not depend on :common. To fix this, you must do one of:

  1. If :common is part of Erlang/Elixir, you must include it under :extra_applications inside "def application" in your mix.exs

  2. If :common is a dependency, make sure it is listed under "def deps" in your mix.exs

  3. In case you don't want to add a requirement to :common, you may optionally skip this warning by adding [xref: [exclude: [Common.Lib]]] to your "def project" in mix.exsElixir
Common.Lib.foo()
```
although `common` dependency is correctly imported with `{:common, in_umbrella: true}` in `mix.exs` file of the other application

## Screenshots

Module `NonPhxApp.Application` in `apps/non_phx_app/lib/non_phx_app/application.ex`

![warning example](img/example1.png "Warning example")

Module `AppWebWeb.Router` in `apps/app_web/lib/app_web_web/router.ex`

![warning example](img/example2.png "Warning example")