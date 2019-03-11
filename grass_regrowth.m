function grass_regrowth()

%Function regrows grass every 4 weeks by 10 units
%For each cell in the grid the grass is grown by 10 units
global ENV_DATA PARAM

[r,c] = size(ENV_DATA.food); 
for row = 1:r
    for column = 1:c     
        ENV_DATA.food(row,column) = ENV_DATA.food(row,column)+PARAM.GRASS_REGROWTH;
    end
end
end

