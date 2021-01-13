function [r] = get_initial_positions()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% In meter 
dx = 0.0063; dy = 0.0063; dz = 0.001;
r = [-1.5*dx  0.5*dy 1*dz; %00
    -1.5*dx  0.5*dy -1*dz; %01
    -1.5*dx  1.5*dy  1*dz; %02
    -1.5*dx  1.5*dy -1*dz; %03
    -1.5*dx -1.5*dy  1*dz; %04
    -1.5*dx -1.5*dy -1*dz; %05
    -1.5*dx -0.5*dy  1*dz; %06
    -1.5*dx -0.5*dy -1*dz; %07
    -0.5*dx  0.5*dy  1*dz; %08
    -0.5*dx  0.5*dy -1*dz; %09
    -0.5*dx  1.5*dy  1*dz; %10
    -0.5*dx  1.5*dy -1*dz; %11
    -0.5*dx -1.5*dy  1*dz; %12
    -0.5*dx -1.5*dy -1*dz; %13
    -0.5*dx -0.5*dy  1*dz; %14
    -0.5*dx -0.5*dy -1*dz; %15
    0.5*dx  0.5*dy  1*dz; %16
    0.5*dx  0.5*dy -1*dz; %17
    0.5*dx  1.5*dy  1*dz; %18
    0.5*dx  1.5*dy -1*dz; %19
    0.5*dx -1.5*dy  1*dz; %20
    0.5*dx -1.5*dy -1*dz; %21
    0.5*dx -0.5*dy  1*dz; %22
    0.5*dx -0.5*dy -1*dz; %23
    1.5*dx  0.5*dy  1*dz; %24
    1.5*dx  0.5*dy -1*dz; %25
    1.5*dx  1.5*dy  1*dz; %26
    1.5*dx  1.5*dy -1*dz; %27
    1.5*dx -1.5*dy  1*dz; %28
    1.5*dx -1.5*dy -1*dz; %29
    1.5*dx -0.5*dy  1*dz; %30
    1.5*dx -0.5*dy -1*dz]'; %31

end

