function External_evaluation_END(gen)
    % EXTERNAL_EVALUATION_END continues the run.
    % To be used after the evaluation of the individuals of genetation GEN.
    % Retrieves the cost information and completes the population
    % See also external_evaluation_CONTINUE, External_evaluation_START.

%End_LGP_script
Initialization;
mlc=MLC('PinballMF');
%% Load
    mlc.load_matlab('PinballMF',['Gen',num2str(gen-1)]);

%% Complete
    matJ = External_build_matJ(mlc.parameters,gen);
    complete_evaluation(mlc,gen,matJ);

%% Save
    mlc.save_matlab(['Gen',num2str(length(mlc.population))]);
