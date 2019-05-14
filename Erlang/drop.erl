%% @author Ben Nesbit <nesbitb@oregonstate.edu>
%% @doc Functions calculating velocities achieved by falling objects
%% dropped in a vacuum.
%% @reference from <a href= "http://shop.oreilly.com/product/0636920025818.do" >
%% Introducing Erlang</a>

-module(drop).
-export([fall_velocity/2]).

fall_velocity(Planemo, Distance) when Distance >= 0 ->
  Gravity = case Planemo of
    earth -> 9.8;
    moon -> 1.6;
    mars -> 3.71
  end,      % comma, function ain't over yet boyo

  math:sqrt(2 * Gravity * Distance).
