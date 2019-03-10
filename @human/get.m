function val=get(c,prop_name)

%standard function to allow extraction of memory parameters from fox object

switch prop_name
   
case 'food'
   val=c.food;
case 'pos'
   val=c.pos;
case 'speed'
    val=c.speed;
case 'killEfficiency'
     val=c.killEfficiency;
otherwise 
   error('invalid field name')
end

