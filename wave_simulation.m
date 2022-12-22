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

% Last Modified by GUIDE v2.5 23-Dec-2022 00:18:41

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

ylim(handles.axe, [0,10])
xlim(handles.axe, [0,10])
hold on
plot(handles.axe, 5, 7.5, 'k.', 'MarkerSize', 15);

% UIWAIT makes wave_simulation wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = wave_simulation_OutputFcn(~, ~, handles)

varargout{1} = handles.output;


% --- Executes on selection change in SourcesMenu.
function SourcesMenu_Callback(~, ~, handles)

%% function to set position of sources
sources = handles.SourcesMenu.String;
sourcesIndex = handles.SourcesMenu.Value;
numberOfSources = str2double(sources{sourcesIndex});

%% function to set position of obstacles
obstacles = handles.ObstaclesMenu.String;
obstaclesIndex = handles.ObstaclesMenu.Value;
typeOfObstacle = obstacles{obstaclesIndex};

if(strcmp(typeOfObstacle,'Without obstacles'))
    cla
    if(numberOfSources==1)
    plot(handles.axe, 5, 7.5, 'k.', 'MarkerSize', 15);
    end
    if(numberOfSources==2)
    plot(handles.axe, 7.5, 7.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    end
    if(numberOfSources==3)
    plot(handles.axe, 7.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 5, 8, 'k.', 'MarkerSize', 15);
    end
    if(numberOfSources==4)
    plot(handles.axe, 7.5, 7.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 7.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 7.5, 'k.', 'MarkerSize', 15);
    end
    if(numberOfSources==5)
    plot(handles.axe, 2, 6, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 5, 8.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 8, 6, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 6.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 3.5, 2.5, 'k.', 'MarkerSize', 15);
    end
end
if(strcmp(typeOfObstacle,'Wall'))
    cla
    if(numberOfSources==1)
    plot(handles.axe, 5, 7.5, 'k.', 'MarkerSize', 15);
    end
    if(numberOfSources==2)
    plot(handles.axe, 7.5, 7.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    end
    if(numberOfSources==3)
    plot(handles.axe, 7.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 5, 8, 'k.', 'MarkerSize', 15);
    end
    if(numberOfSources==4)
    plot(handles.axe, 7.5, 7.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 7.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 7.5, 'k.', 'MarkerSize', 15);
    end
    if(numberOfSources==5)
    plot(handles.axe, 2, 6, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 5, 8.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 8, 6, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 6.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 3.5, 2.5, 'k.', 'MarkerSize', 15);
    end
    hold on
    line([2,8], [5,5], 'Color', 'r');
end

if(strcmp(typeOfObstacle,'Circle'))
    cla
    if(numberOfSources==1)
    plot(handles.axe,5, 7.5, 'k.', 'MarkerSize', 15);
    hold on
    th = 0:pi/100:2*pi;
    f = 1.5 * exp(1i*th) + 7+1i*5;
    plot(real(f), imag(f));
    end
    if(numberOfSources==2)
    plot(handles.axe, 7.5, 7.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    hold on
    th = 0:pi/100:2*pi;
    f = 1.5 * exp(1i*th) + 5+1i*5;
    plot(real(f), imag(f));
    end
    if(numberOfSources==3)
    plot(handles.axe, 7.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 5, 8, 'k.', 'MarkerSize', 15);
    hold on
    th = 0:pi/100:2*pi;
    f = 1.5 * exp(1i*th) + 5+1i*5;
    plot(real(f), imag(f));
    end
    if(numberOfSources==4)
    plot(handles.axe, 7.5, 7.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 7.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 7.5, 'k.', 'MarkerSize', 15);
    hold on
    th = 0:pi/100:2*pi;
    f = 1.5 * exp(1i*th) + 5+1i*5;
    plot(real(f), imag(f));
    end
    if(numberOfSources==5)
    plot(handles.axe, 2, 6, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 5, 8.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 8, 6, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 6.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 3.5, 2.5, 'k.', 'MarkerSize', 15);
    hold on
    th = 0:pi/100:2*pi;
    f = 1.5 * exp(1i*th) + 5+1i*5;
    plot(real(f), imag(f));
    end
end

if(strcmp(typeOfObstacle,'Box'))
    cla
    if(numberOfSources==1)
    plot(handles.axe, 5, 7.5, 'k.', 'MarkerSize', 15);
    hold on
    line([4,6], [6,6], 'Color', 'r');
    line([4,6], [4,4], 'Color', 'r');
    line([4,4], [4,6], 'Color', 'r');
    line([6,6], [4,6], 'Color', 'r');
    end
    if(numberOfSources==2)
    plot(handles.axe, 7.5, 7.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    hold on
    line([4,6], [6,6], 'Color', 'r');
    line([4,6], [4,4], 'Color', 'r');
    line([4,4], [4,6], 'Color', 'r');
    line([6,6], [4,6], 'Color', 'r');
    end
    if(numberOfSources==3)
    plot(handles.axe,7.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe,2.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe,5, 8, 'k.', 'MarkerSize', 15);
    hold on
    line([4,6], [6,6], 'Color', 'r');
    line([4,6], [4,4], 'Color', 'r');
    line([4,4], [4,6], 'Color', 'r');
    line([6,6], [4,6], 'Color', 'r');
    end
    if(numberOfSources==4)
    plot(handles.axe, 7.5, 7.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 7.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 7.5, 'k.', 'MarkerSize', 15);
    hold on
    line([4,6], [6,6], 'Color', 'r');
    line([4,6], [4,4], 'Color', 'r');
    line([4,4], [4,6], 'Color', 'r');
    line([6,6], [4,6], 'Color', 'r');
    end
    if(numberOfSources==5)
    plot(handles.axe, 2, 6, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 5, 8.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 8, 6, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 6.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 3.5, 2.5, 'k.', 'MarkerSize', 15);
    hold on
    line([4,6], [6,6], 'Color', 'r');
    line([4,6], [4,4], 'Color', 'r');
    line([4,4], [4,6], 'Color', 'r');
    line([6,6], [4,6], 'Color', 'r');
    end
end


function SourcesMenu_CreateFcn(hObject, ~, ~)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%% --- Executes on selection change in ObstaclesMenu.
function ObstaclesMenu_Callback(~, ~, handles)
% --- Executes during object creation, after setting all properties.

%% function to set position of sources
sources = handles.SourcesMenu.String;
sourcesIndex = handles.SourcesMenu.Value;
numberOfSources = str2double(sources{sourcesIndex});

%% function to set position of obstacles
obstacles = handles.ObstaclesMenu.String;
obstaclesIndex = handles.ObstaclesMenu.Value;
typeOfObstacle = obstacles{obstaclesIndex};

if(strcmp(typeOfObstacle,'Without obstacles'))
    cla
    if(numberOfSources==1)
    plot(handles.axe, 5, 7.5, 'k.', 'MarkerSize', 15);
    end
    if(numberOfSources==2)
    plot(handles.axe, 7.5, 7.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    end
    if(numberOfSources==3)
    plot(handles.axe, 7.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 5, 8, 'k.', 'MarkerSize', 15);
    end
    if(numberOfSources==4)
    plot(handles.axe, 7.5, 7.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 7.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 7.5, 'k.', 'MarkerSize', 15);
    end
    if(numberOfSources==5)
    plot(handles.axe, 2, 6, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 5, 8.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 8, 6, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 6.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 3.5, 2.5, 'k.', 'MarkerSize', 15);
    end
end
if(strcmp(typeOfObstacle,'Wall'))
    cla
    if(numberOfSources==1)
    plot(handles.axe, 5, 7.5, 'k.', 'MarkerSize', 15);
    end
    if(numberOfSources==2)
    plot(handles.axe, 7.5, 7.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    end
    if(numberOfSources==3)
    plot(handles.axe, 7.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 5, 8, 'k.', 'MarkerSize', 15);
    end
    if(numberOfSources==4)
    plot(handles.axe, 7.5, 7.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 7.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 7.5, 'k.', 'MarkerSize', 15);
    end
    if(numberOfSources==5)
    plot(handles.axe, 2, 6, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 5, 8.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 8, 6, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 6.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 3.5, 2.5, 'k.', 'MarkerSize', 15);
    end
    hold on
    line([2,8], [5,5], 'Color', 'r');
end

if(strcmp(typeOfObstacle,'Circle'))
    cla
    if(numberOfSources==1)
    plot(handles.axe,5, 7.5, 'k.', 'MarkerSize', 15);
    hold on
    th = 0:pi/100:2*pi;
    f = 1.5 * exp(1i*th) + 7+1i*5;
    plot(real(f), imag(f));
    end
    if(numberOfSources==2)
    plot(handles.axe, 7.5, 7.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    hold on
    th = 0:pi/100:2*pi;
    f = 1.5 * exp(1i*th) + 5+1i*5;
    plot(real(f), imag(f));
    end
    if(numberOfSources==3)
    plot(handles.axe, 7.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 5, 8, 'k.', 'MarkerSize', 15);
    hold on
    th = 0:pi/100:2*pi;
    f = 1.5 * exp(1i*th) + 5+1i*5;
    plot(real(f), imag(f));
    end
    if(numberOfSources==4)
    plot(handles.axe, 7.5, 7.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 7.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 7.5, 'k.', 'MarkerSize', 15);
    hold on
    th = 0:pi/100:2*pi;
    f = 1.5 * exp(1i*th) + 5+1i*5;
    plot(real(f), imag(f));
    end
    if(numberOfSources==5)
    plot(handles.axe, 2, 6, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 5, 8.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 8, 6, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 6.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 3.5, 2.5, 'k.', 'MarkerSize', 15);
    hold on
    th = 0:pi/100:2*pi;
    f = 1.5 * exp(1i*th) + 5+1i*5;
    plot(real(f), imag(f));
    end
end

if(strcmp(typeOfObstacle,'Box'))
    cla
    if(numberOfSources==1)
    plot(handles.axe, 5, 7.5, 'k.', 'MarkerSize', 15);
    hold on
    line([4,6], [6,6], 'Color', 'r');
    line([4,6], [4,4], 'Color', 'r');
    line([4,4], [4,6], 'Color', 'r');
    line([6,6], [4,6], 'Color', 'r');
    end
    if(numberOfSources==2)
    plot(handles.axe, 7.5, 7.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    hold on
    line([4,6], [6,6], 'Color', 'r');
    line([4,6], [4,4], 'Color', 'r');
    line([4,4], [4,6], 'Color', 'r');
    line([6,6], [4,6], 'Color', 'r');
    end
    if(numberOfSources==3)
    plot(handles.axe,7.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe,2.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe,5, 8, 'k.', 'MarkerSize', 15);
    hold on
    line([4,6], [6,6], 'Color', 'r');
    line([4,6], [4,4], 'Color', 'r');
    line([4,4], [4,6], 'Color', 'r');
    line([6,6], [4,6], 'Color', 'r');
    end
    if(numberOfSources==4)
    plot(handles.axe, 7.5, 7.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 7.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 2.5, 7.5, 'k.', 'MarkerSize', 15);
    hold on
    line([4,6], [6,6], 'Color', 'r');
    line([4,6], [4,4], 'Color', 'r');
    line([4,4], [4,6], 'Color', 'r');
    line([6,6], [4,6], 'Color', 'r');
    end
    if(numberOfSources==5)
    plot(handles.axe, 2, 6, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 5, 8.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 8, 6, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 6.5, 2.5, 'k.', 'MarkerSize', 15);
    plot(handles.axe, 3.5, 2.5, 'k.', 'MarkerSize', 15);
    hold on
    line([4,6], [6,6], 'Color', 'r');
    line([4,6], [4,4], 'Color', 'r');
    line([4,4], [4,6], 'Color', 'r');
    line([6,6], [4,6], 'Color', 'r');
    end
end

function ObstaclesMenu_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%% --- Executes on selection change in DurationMenu.
function DurationMenu_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function DurationMenu_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%% --- Executes on button press in SimButton.
function SimButton_Callback(~, ~, handles)
Lx = 10;
Ly = 10;
dx = 0.1;
dy = dx;
nx = fix(Lx/dx);
ny = fix(Ly/dy);

x = linspace(0, Lx, nx);
y = linspace(0, Ly, ny);

% solution: values useful for wave equation

%% duration
duration = handles.DurationMenu.String;
durationIndex = handles.DurationMenu.Value;
T = str2double(duration{durationIndex});

%% sources
sources = handles.SourcesMenu.String;
sourcesIndex = handles.SourcesMenu.Value;
numberOfSources = str2double(sources{sourcesIndex});

%% obstacles
obstacles = handles.ObstaclesMenu.String;
obstaclesIndex = handles.ObstaclesMenu.Value;
typeOfObstacle = obstacles{obstaclesIndex};

%% frequency
frequency = handles.FrequencyMenu.String;
frequencyIndex = handles.FrequencyMenu.Value;
freq = str2double(frequency{frequencyIndex});

%% amplitude 
amplitude = handles.AmplitudeMenu.String;
amplitudeIndex = handles.AmplitudeMenu.Value;
amp = str2double(amplitude{amplitudeIndex});

%% max
maxValue = handles.MaximumMenu.String;
maxIndex = handles.MaximumMenu.Value;
max = str2double(maxValue{maxIndex});

%% min
minValue = handles.MinimumMenu.String;
minIndex = handles.MinimumMenu.Value;
min = str2double(minValue{minIndex});

%% equation

wn = zeros(nx, ny);
wnm1 = wn;
wnp1 = wn;

% Parameters
CFL = 0.5; % CFL = c.dt/dx
c = 1;
dt = CFL*dx/c;
t = 0;
T = T * (1/c) * CFL;
cla
while(t < T)
    % Reflecting Boundary Conditions which we will implemented in our
    % simulation
    wn(:,[1 end]) = 0;
    wn([1 end],:) = 0;
    t = t + dt;

    %Save current and previous arrays
    wnm1=wn; 
    wn=wnp1;

    % Setting places where wave will be generate
    if(numberOfSources==1)
        wn(75, 50) = amp * sin(2 * freq * 2 * pi * t);
    end
    if(numberOfSources==2)
        wn(75, 75) = amp * sin(2 * freq * 2 * pi * t);
        wn(25, 25) = amp * sin(2 * freq * 2 * pi * t);
    end
    if(numberOfSources==3)
        wn(80, 50) = amp * sin(2 * freq * 2 * pi * t);
        wn(25, 25) = amp * sin(2 * freq * 2 * pi * t);
        wn(25, 75) = amp * sin(2 * freq * 2 * pi * t);
    end
    if(numberOfSources==4)
        wn(75, 25) = amp * sin(2 * freq * 2 * pi * t);
        wn(75, 75) = amp * sin(2 * freq * 2 * pi * t);
        wn(25, 25) = amp * sin(2 * freq * 2 * pi * t);
        wn(25, 75) = amp * sin(2 * freq * 2 * pi * t);
    end
    if(numberOfSources==5)
        wn(60, 20) = amp * sin(2 * freq * 2 * pi * t);
        wn(60, 80) = amp * sin(2 * freq * 2 * pi * t);
        wn(25, 35) = amp * sin(2 * freq * 2 * pi * t);
        wn(25, 65) = amp * sin(2 * freq * 2 * pi * t);
        wn(85, 50) = amp * sin(2 * freq * 2 * pi * t);
    end

    % Setting obstacles where waves are generate

    if(strcmp(typeOfObstacle,'Wall'))
        wn(50,20:80)=0;
    end
    if(strcmp(typeOfObstacle,'Box'))
        wn(60,40:60)=0;
        wn(40,40:60)=0;
        wn(40:60,40)=0;
        wn(40:60,60)=0;
    end

    if(strcmp(typeOfObstacle,'Circle'))
        if(numberOfSources==1)
            r=15;
            center_y=70;
            center_x=50;
        end
        if(numberOfSources==2)
            r=15;
            center_y=50;
            center_x=50;
        end
        if(numberOfSources==3)
            r=15;
            center_y=50;
            center_x=50;
        end
        if(numberOfSources==4)
            r=15;
            center_y=50;
            center_x=50;
        end
        if(numberOfSources==5)
            r=15;
            center_y=50;
            center_x=50;
        end

        % equation for circle

        for b=1:nx-1
            for a=1:ny-1
                if(((a-center_x)*(a-center_x)+(b-center_y)*(b-center_y))<=(r*r))
                    wn(a,b)=0;
                end
            end 
        end
    end

    % wave equation 
    
    for i=2:nx-1
        for j=2:ny-1
        wnp1(i,j) = 2*wn(i,j) - wnm1(i,j) + CFL^2 *(wn(i+1,j) +wn(i,j+1) - 4*wn(i,j) + wn(i-1,j) + wn(i,j-1));
        end
    end
    imagesc(handles.axe,x,y,wn);
    colorbar();
    caxis([min max])
    colormap("parula")
    if(strcmp(typeOfObstacle,'Wall'))
    hold on
    line([2,8], [5, 5], 'Color', 'r');
    end
    if(strcmp(typeOfObstacle,'Circle'))
        if(numberOfSources==1)
        hold on
        th = 0:pi/100:2*pi;
        f = 1.5 * exp(1i*th) + 7+1i*5;
        plot(real(f), imag(f));
        end
        if(numberOfSources==2)
        hold on
        th = 0:pi/100:2*pi;
        f = 1.5 * exp(1i*th) + 5+1i*5;
        plot(real(f), imag(f));
        end
        if(numberOfSources==3)
        hold on
        th = 0:pi/100:2*pi;
        f = 1.5 * exp(1i*th) + 5+1i*5;
        plot(real(f), imag(f));
        end
        if(numberOfSources==4)
        hold on
        th = 0:pi/100:2*pi;
        f = 1.5 * exp(1i*th) + 5+1i*5;
        plot(real(f), imag(f));
        end
        if(numberOfSources==5)
        hold on
        th = 0:pi/100:2*pi;
        f = 1.5 * exp(1i*th) + 5+1i*5;
        plot(real(f), imag(f));
        end
    end
    if(strcmp(typeOfObstacle, 'Box'))
    hold on
    line([4,6], [6,6], 'Color', 'r');
    line([4,6], [4,4], 'Color', 'r');
    line([4,4], [4,6], 'Color', 'r');
    line([6,6], [4,6], 'Color', 'r');
    end
    title(handles.axe, sprintf('t=%.2f', t*c*(1/CFL)))
    pause(0.005);     
end


function SimButton_ButtonDownFcn(~, ~, handles)
% hObject    handle to SimButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


%% --- Executes on selection change in FrequencyMenu.
function FrequencyMenu_Callback(~, ~, handles)
% --- Executes during object creation, after setting all properties.
function FrequencyMenu_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%% --- Executes on selection change in AmplitudeMenu.
function AmplitudeMenu_Callback(~, ~, handles)
% --- Executes during object creation, after setting all properties.
function AmplitudeMenu_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%% --- Executes on selection change in MaximumMenu.
function MaximumMenu_Callback(~, ~, handles)
% --- Executes during object creation, after setting all properties.
function MaximumMenu_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%% --- Executes on selection change in MinimumMenu.
function MinimumMenu_Callback(~, ~, handles)
% --- Executes during object creation, after setting all properties.
function MinimumMenu_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



