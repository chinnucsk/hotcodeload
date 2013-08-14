-module(hotcodeloading).

-export([loop/0]).

loop() ->
    receive
        upgrade ->
            code:purge(?MODULE),
            compile:file(?MODULE),
            code:load_file(?MODULE),
            ?MODULE:loop();
        chinnu ->
            io:format("This is Original~n"),
            loop();
        _ ->
            loop()
    end.
