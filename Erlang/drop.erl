%% @author Ben Nesbit <nesbitb@oregonstate.edu>
%% @doc Functions calculating velocities achieved by falling objects
%% dropped in a vacuum.
%% @reference from <a href= "http://shop.oreilly.com/product/0636920025818.do" >
%% Introducing Erlang</a>

-module(drop).
-export([fall_velocity/2]).

fall_velocity(Planemo, Distance) when Distance >= 0 ->
  case Planemo of
    earth -> math:sqrt(2 * 9.8 * Distance);
    moon -> math:sqrt(2 * 1.6 * Distance);
    mars -> math:sqrt(2 * 3.71 * Distance);
    _ -> "unknown planet"
  end.
