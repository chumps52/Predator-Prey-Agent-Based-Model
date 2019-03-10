classdef human   %declares rabbit object
    properties    %define rabbit properties (parameters) 
        food; 
        pos;
        speed;
        killEfficiency;
    end
    methods                         %note that this class definition mfile contains only the constructor method!
                                    %all additional member functions associated with this class are included as separate mfiles in the @rabbit folder. 
        function h=human(varargin) %constructor method for rabbit - assigns values to rabbit properties
                %r=rabbit(age,food,pos....)
                %
                %age of agent (usually 0)
                %food - amount of food that rabbit has eaten
                %pos - vector containg x,y, co-ords 

                %Modified by Martin Bayley on 29/01/13


                switch nargin           %Use switch statement with nargin,varargin contructs to overload constructor methods
                    case 0				%create default object
                       h.food=[];			
                       h.pos=[];
                       h.speed=[];
                       h.killEfficiency=[];
                    case 1              %input is already a rabbit, so just return!
                       if (isa(varargin{1},'human'))		
                            h=varargin{1};
                       else
                            error('Input argument is not a human')
                            
                       end
                    case 4               %create a new human (currently the only constructor method used)
                       h.food=varargin{1};               %age of rabbit object in number of iterations
                       h.pos=varargin{2};              %current food content (arbitrary units)
                       h.speed=varargin{3};               %current position in Cartesian co-ords [x y]
                       h.killEfficiency=varargin{4};             %number of kilometres rabbit can migrate in 1 day      
                    otherwise
                       error('Invalid no. of input arguments')
                end
        end
    end
end
