function c=set(c,prop_name,val)

%standard function to allow insertion of memory parameters from human object

switch prop_name
   
case 'food'
   h.food=val;
case 'pos'
    h.pos=val; 
case 'speed'
   h.speed=val;
case 'kill_efficiency'
   h.kill_efficiency=val; 
otherwise 
   error('invalid field name')
end

