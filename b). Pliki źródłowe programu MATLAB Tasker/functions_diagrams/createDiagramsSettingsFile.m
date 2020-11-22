%**********************************************************************
%QuantStudio - MATLAB IO Utility.
%Author: Aron Mandrella
%@2018
%**********************************************************************/
%Generowanie pliku konfiguracyjnego wykres�w.
function [tf] = createDiagramsSettingsFile(filename)

%% POBRANIE USTAWIE� WYKRES�W:
[...
    diagram_types, diagram_count_fun,...
    flag_sets, flag_sets_names,...
    additional_flags,...
    metrics_group, metrics_solo, metrics_image,...
    bar_metrics, bar_tensions, bar_weights,...
    rescale,...
    tf...
] = inputDiagramsSettings();
if tf == 0
    return;
end

%% ZAPISNIE PLIKU:
save(filename,...
    'diagram_types', 'diagram_count_fun',...
    'flag_sets', 'flag_sets_names',...
    'additional_flags',...
    'metrics_group', 'metrics_solo', 'metrics_image',...
    'bar_metrics', 'bar_tensions', 'bar_weights',...
    'rescale');
tf = exist(filename, 'file') == 2;


end