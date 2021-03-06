function plotindiv(MLC,Idx)
    % PLOT plots the individual Idx
    %
    % See also MLCind, evaluate_indiv.

%% Individual and evaluation function
Indiv = MLC.table.individuals(Idx);
    control_law = Indiv.control_law;
    control_law = strrep_cl(MLC.parameters,control_law,2);

eval([MLC.parameters.EvaluationFunction '_problem(control_law,MLC.parameters,1)']);
end