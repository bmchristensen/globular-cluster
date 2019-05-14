%% @author Ben Nesbit <nesbitb@oregonstate.edu>
%% @doc Functions calculating velocities achieved by falling objects
%% dropped in a vacuum.
%% @reference from <a href= "http://shop.oreilly.com/product/0636920025818.do" >
%% Introducing Erlang</a>

-module(drop).
-export([fall_velocity/2]).

fall_velocity(earth, Distance) -> math:sqrt(2 * 9.8 * Distance);

fall_velocity(moon, Distance) -> math:sqrt(2 * 1.6 * Distance);

fall_velocity(mars, Distance) -> math:sqrt(2 * 3.71 * Distance).
