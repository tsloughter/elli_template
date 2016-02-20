{{name}}
=====

{{desc}}

Run
----

```
===> Verifying dependencies...
===> Fetching elli ({pkg,<<"elli">>,<<"1.0.5">>})
===> Version cached at ~/.cache/rebar3/hex/default/packages/elli-1.0.5.tar is up to date, reusing it
===> Compiling elli
===> Compiling {{name}}
===> Booted elli
===> Booted {{name}}
===> Booted sasl
Erlang/OTP 18 [erts-7.2.1] [source] [64-bit] [smp:4:4] [async-threads:0] [hipe] [kernel-poll:false]

Eshell V7.2.1  (abort with ^G)
1>
```

And open [http://localhost:8080/hello/world](http://localhost:8080/hello/world).

Release
--------

Or build and run as a release, you can modify `config/sys.config` and `config/vm.args` to update application and VM settings.

```
$ rebar3 release
$ _build/default/rel/{{name}}/bin/{{name}} console
```
