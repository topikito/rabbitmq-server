%% The contents of this file are subject to the Mozilla Public License
%% Version 1.1 (the "License"); you may not use this file except in
%% compliance with the License. You may obtain a copy of the License
%% at http://www.mozilla.org/MPL/
%%
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and
%% limitations under the License.
%%
%% The Original Code is RabbitMQ.
%%
%% The Initial Developer of the Original Code is GoPivotal, Inc.
%% Copyright (c) 2007-2016 Pivotal Software, Inc.  All rights reserved.
%%

-module(rabbit_credential_validator_accept_everything).

-include("rabbit.hrl").

-behaviour(rabbit_credential_validator).

%%
%% API
%%

-export([validate_password/1]).

-spec validate_password(rabbit_types:password()) -> 'ok' | {'error', string(), [any()]}.

validate_password(_Password) ->
    ok.