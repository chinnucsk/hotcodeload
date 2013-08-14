Hot Code Load using Code Module
===========

Erlang Hot Code Loading 



$erl
Erlang R16B01 (erts-5.10.2) [source] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]

Eshell V5.10.2  (abort with ^G)

%% Complie the Module %%

1> c(hotcodeloading).
{ok,hotcodeloading}

%% spawn a built-in function used to create a process%%


%% To create a process, we use BIF spawn/3 which returns the new process PID%%

2> Loop = spawn(hotcodeloading, loop, []).
<0.41.0>


%% ! is Send Message Operator %%


%% The Send Operator passes a message to a process %%

3> Loop ! chinnu.
This is Original
chinnu

%% Change the Code %%


4> Loop ! upgrade.
upgrade

%% After Hot Code Loaded Function Result %%

5> Loop ! chinnu.
This is Hot Code Loading
chinnu
6> 
