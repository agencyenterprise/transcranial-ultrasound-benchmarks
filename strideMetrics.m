%STRIDEMETRICS Save out metriscs on Stride results
addpath(genpath('intercomparison'));

%% Modify data_path if necessary
data_path = 'INTERCOMPARISON-PH1-DATA-V1.0';

%% Calculate metrics for Stride
BENCHMARK_NUM = 4;
TRANSDUCER_NUM = 1;
SIMULATOR = 'STRIDE';
metrics = compareTwo(SIMULATOR, SIMULATOR, BENCHMARK_NUM, TRANSDUCER_NUM,...
    data_path, false);

%% Save out metrics as separate variables
save_name = sprintf('metrics-BM%d-SC%d_%s.mat',...
    BENCHMARK_NUM, TRANSDUCER_NUM, SIMULATOR);
save(save_name, '-struct', 'metrics', '-v7.3');
