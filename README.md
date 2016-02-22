Elli Template for Rebar3
----------------------------

This repo provides a [rebar3](http://rebar3.org) template for the Erlang web library [elli](https://github.com/knutin/elli).

To install simply clone to `~/.config/rebar3/templates`:

```
mkdir -p ~/.config/rebar3/templates
git clone https://github.com/tsloughter/elli_template.git ~/.config/rebar3/templates/elli_template
```

Use
---

```
$ rebar3 new elli name=proj_name
$ cd proj_name
```

See the callback module for a "hello world" example:

```erlang
handle('GET',[<<"hello">>, <<"world">>], _Req) ->
    %% Reply with a normal response. 'ok' can be used instead of '200'
    %% to signal success.
    {ok, [], <<"Hello World!">>};
```

Starting up is as easy as `rebar3 shell`, then go to [http://localhost:8080/hello/world](http://localhost:8080/hello/world) to see it work.
