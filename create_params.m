function create_params

%set up breeding, migration and starvation threshold parameters. These
%are all completely made up!

%PARAM - structure containing values of all parameters governing agent
%behaviour for the current simulation

global PARAM

    PARAM.R_SPD=26;         %speed of movement - units per itn (Hare)
    PARAM.F_SPD=18;         %speed of movement - units per itn (Lynx)
    PARAM.H_SPD=16;
    PARAM.R_BRDFQ=11;      %breeding frequency - iterations  (CHANGE HERE ONLY)
    PARAM.F_BRDFQ=42;
    PARAM.R_MINFOOD=0;      %minimum food threshold before agent dies 
    PARAM.F_MINFOOD=0;
    PARAM.R_FOODBRD=10;     %minimum food threshold for breeding
    PARAM.F_FOODBRD=5;
    PARAM.R_MAXAGE=365;      %maximum age allowed 
    PARAM.F_MAXAGE=834;
    PARAM.H_KILLEFFICIENCY=10;
    PARAM.H_KILLS = 0;
