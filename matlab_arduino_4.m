function varargout = matlab_arduino_4(varargin)
% MATLAB_ARDUINO_4 MATLAB code for matlab_arduino_4.fig
%      MATLAB_ARDUINO_4, by itself, creates a new MATLAB_ARDUINO_4 or raises the existing
%      singleton*.
%
%      H = MATLAB_ARDUINO_4 returns the handle to a new MATLAB_ARDUINO_4 or the handle to
%      the existing singleton*.
%
%      MATLAB_ARDUINO_4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MATLAB_ARDUINO_4.M with the given input arguments.
%
%      MATLAB_ARDUINO_4('Property','Value',...) creates a new MATLAB_ARDUINO_4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before matlab_arduino_4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to matlab_arduino_4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help matlab_arduino_4

% Last Modified by GUIDE v2.5 13-Dec-2019 23:18:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @matlab_arduino_4_OpeningFcn, ...
                   'gui_OutputFcn',  @matlab_arduino_4_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
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


% --- Executes just before matlab_arduino_4 is made visible.
function matlab_arduino_4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to matlab_arduino_4 (see VARARGIN)

% Choose default command line output for matlab_arduino_4
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes matlab_arduino_4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = matlab_arduino_4_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in con01.
function con01_Callback(hObject, eventdata, handles)
% hObject    handle to con01 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
a = arduino('com5');

% --- Executes on button press in dis01.
function dis01_Callback(hObject, eventdata, handles)
% hObject    handle to dis01 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear all;
disp('DisConnected');

% --- Executes on button press in start01.
function start01_Callback(hObject, eventdata, handles)
% hObject    handle to start01 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global a s;
k=0;
s=1;
while(s==1)
    v = a.analogRead(0);
    v = v*(5/1023);
    plot(k,v,'or','linewidth',2.5);
    grid on; xlabel('Time (s)'); ylabel('voltage (v)');
    axis([k-80 k+10 0 6]); hold on;
    k=k+1;
    pause(0.1);
end

% --- Executes on button press in stop01.
function stop01_Callback(hObject, eventdata, handles)
% hObject    handle to stop01 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global s;
s=0;
 



