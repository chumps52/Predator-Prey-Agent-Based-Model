function [agt,hunted]=hunt(agt,cn)

%hunting function for class HUMAN
%agt=fox object
%cn - current agent number
%eaten = 1 if fox successfully finds a rabbit, =0 otherwise

%SUMMARY OF FOX EAT RULE
%Fox calculates distance to all rabbits
%Fox identifies nearest rabbits(s)
%If more than one equidistant within search radius, one is randomly picked
%Probability of fox killing rabbit =1 - distance of rabbit/speed of fox
%If probability > rand, fox moves to rabbit location and rabbit is
%killed
%If fox does not kill rabbit, it's food is decremented by one unit

%GLOBAL VARIABLES
%N_IT is current iteration number
%IT_STATS is data structure containing statistics on model at each
%iteration (no. agents etc)
%MESSAGES is a data structure containing information that agents need to
%broadcast to each other
   %    MESSAGES.atype - n x 1 array listing the type of each agent in the model
   %    (1=rabbit, 2-fox, 3=human,4 = dead)
   %    MESSAGES.pos - list of every agent position in [x y]
   %    MESSAGE.dead - n x1 array containing ones for agents that have died
   %    in the current iteration
   
     
%Modified by D Walker 3/4/08

global  IT_STATS N_IT MESSAGES PARAM
   
pos=agt.pos;                        %extract current position 
cfood=agt.food;                     %get current agent food level
agt.food = cfood-1;
spd=agt.speed;                      %fox migration speed in units per iteration - this is equal to the food search radius
killEfficiency=agt.killEfficiency;
hungry = 0;
hunted = 0;

typ=MESSAGES.atype;                                         %extract types of all agents
fx=find(typ==2);                                            %indices of all foxes
fpos=MESSAGES.pos(fx,:);                                     %extract positions of all rabbits
csep=sqrt((fpos(:,1)-pos(:,1)).^2+(fpos(:,2)-pos(:,2)).^2);  %calculate distance to all foxes
[d,ind]=min(csep);                                            %d is distance to closest fox, ind is index of that fox
frst=fx(ind);                                                %index of nearest fox(s)

%Checking if the human is hungry and needs to stop to eat
if cfood<0
    hungry = 1;
    agt.food = cfood+5;
end



if d<=spd&length(frst)>0&hungry==0    %if there is at least one  fox within the search radius        
    if length(frst)>1       %if more than one fox located at same distance then randomly pick one to head towards
        s=round(rand*(length(frst)-1))+1;
        frst=frst(s);
    end
    pk=1-(d/spd)-(killEfficiency/7);                       %probability that fox will kill rabbit is ratio of speed to distance
    if pk>rand
        PARAM.H_KILLS = PARAM.H_KILLS+1;
        nx=MESSAGES.pos(frst,1);    %extract exact location of this fox
        ny=MESSAGES.pos(frst,2);
        npos=[nx ny];        %increase human satisfaction by one unit
        agt.pos=npos;               %move agent to position of this fox
        IT_STATS.died_f(N_IT+1)=IT_STATS.died_f(N_IT+1)+1;                %update model statistics
        hunted=1;
        MESSAGES.dead(frst)=1;       %send message to fox so it knows it's dead!
    else
       hunted = 0;
    end

        
end


   
