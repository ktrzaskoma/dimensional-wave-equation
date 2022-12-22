function varargout = wave_simulation(varargin)
%WAVE_SIMULATION MATLAB code file for wave_simulation.fig
%      WAVE_SIMULATION, by itself, creates a new WAVE_SIMULATION or raises the existing
%      singleton*.
%
%      H = WAVE_SIMULATION returns the handle to a new WAVE_SIMULATION or the handle to
%      the existing singleton*.
%
%      WAVE_SIMULATION('Property','Value',...) creates a new WAVE_SIMULATION using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to wave_simulation_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      WAVE_SIMULATION('CALLBACK') and WAVE_SIMULATION('CALLBACK',hObject,...) call the
%      local function named CALLBACK in WAVE_SIMULATION.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help wave_simulation

% Last Modified by GUIDE v2.5 22-Dec-2022 14:41:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @wave_simulation_OpeningFcn, ...
                   'gui_OutputFcn',  @wave_simulation_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
   gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before wave_simulation is made visible.
function wave_simulation_OpeningFcn(hObject, ~, handles, varargin)

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes wave_simulation wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = wave_simulation_OutputFcn(hObject, eventdata, handles)

varargout{1} = handles.output;


% --- Executes on selection change in SourcesMenu.
function SourcesMenu_Callback(hObject, eventdata, handles)
function SourcesMenu_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in ObstaclesMenu.
function ObstaclesMenu_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function ObstaclesMenu_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in DurationMenu.
function DurationMenu_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function DurationMenu_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in FrequencyMenu.
function FrequencyMenu_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function FrequencyMenu_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in AmplitudeMenu.
function AmplitudeMenu_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function AmplitudeMenu_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in MaximumMenu.
function MaximumMenu_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function MaximumMenu_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in MinimumMenu.
function MinimumMenu_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function MinimumMenu_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in StartButton.
function StartButton_Callback(hObject, eventdata, handles)



