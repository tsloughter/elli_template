%%%-------------------------------------------------------------------
%% @doc {{name}} top level supervisor.
%% @end
%%%-------------------------------------------------------------------

-module({{name}}_sup).

-behaviour(supervisor).

%% API
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).

-define(SERVER, ?MODULE).

%%====================================================================
%% API functions
%%====================================================================

start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

%%====================================================================
%% Supervisor callbacks
%%====================================================================

%% Child :: {Id,StartFunc,Restart,Shutdown,Type,Modules}
init([]) ->
    Port = application:get_env({{name}}, port, 8080),
    ElliOpts = [{callback, {{name}}_callback}, {port, Port}],
    ElliSpec = { {{name}}_http, {elli, start_link, [ElliOpts]}, permanent, 5000, worker, [elli]},
    {ok, { {one_for_one, 5, 10}, [ElliSpec]} }.

%%====================================================================
%% Internal functions
%%====================================================================
