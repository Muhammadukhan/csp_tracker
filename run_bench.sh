#!/usr/bin/env escript
%% -*- erlang -*-
%%! +P 1000000 -smp enable -sname bench_suite -mnesia debug verbose


main([String]) ->
	io:format("Process limit: ~p\n",[erlang:system_info(process_limit)]),
	csp_tracker_loader:load(),
	File = list_to_atom(String),  
	csp_bench:bench(File,'MAIN',2000,1000).