function redundant = find_redundant(MLC_table,indiv)
    % FIND_INDIV finds indices of indiv
    % Checks if indiviuals with the same control points exists.
    
%% Retrieve control points
if isempty(MLC_table.non_redundant)
    table_control_points = MLC_table.control_points(MLC_table.non_redundant,:);
else
    table_control_points = MLC_table.control_points(MLC_table.non_redundant,:);
end

%% Redundantlist
redundant_list = find(prod(table_control_points==indiv.control_points,2));
if isempty(redundant_list)
  redundant = 0;
else
  redundant = MLC_table.non_redundant(redundant_list(1));
end

end
