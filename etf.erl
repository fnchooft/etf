%%% Copyright (c) 2017, Mathieu Kerjouan <contact@steepath.eu>
%%%
%%% Permission to use, copy, modify,  and distribute this software for
%%% any purpose with  or without fee is hereby  granted, provided that
%%% the above  copyright notice and  this permission notice  appear in
%%% all copies.
%%%
%%% THE  SOFTWARE IS  PROVIDED "AS  IS" AND  THE AUTHOR  DISCLAIMS ALL
%%% WARRANTIES  WITH REGARD  TO  THIS SOFTWARE  INCLUDING ALL  IMPLIED
%%% WARRANTIES OF MERCHANTABILITY  AND FITNESS. IN NO  EVENT SHALL THE
%%% AUTHOR   BE  LIABLE   FOR  ANY   SPECIAL,  DIRECT,   INDIRECT,  OR
%%% CONSEQUENTIAL  DAMAGES OR  ANY DAMAGES  WHATSOEVER RESULTING  FROM
%%% LOSS OF  USE, DATA OR PROFITS,  WHETHER IN AN ACTION  OF CONTRACT,
%%% NEGLIGENCE  OR  OTHER  TORTIOUS  ACTION,  ARISING  OUT  OF  OR  IN
%%% CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

-module(etf).
-export([encoding/0, decoding/0]).

-spec encoding() -> iolist().
encoding() ->
  MyTerm = [{key, "value"},1,2,3],
  io:format("term: ~p~n", [MyTerm]),
  MyETF = erlang:term_to_binary(MyTerm),
  io:format("encoded: ~p~n", [MyETF]),
  MyETF.

-spec decoding() -> term().
decoding() ->
  MyBinary = encoding(),
  MyTerm = erlang:binary_to_term(MyBinary),
  io:format("decoded: ~p~n", [MyTerm]),
  MyTerm.
