function varargout = matlab_arduino_3(varargin)
% MATLAB_ARDUINO_3 MATLAB code for matlab_arduino_3.fig
%      MATLAB_ARDUINO_3, by itself, creates a new MATLAB_ARDUINO_3 or raises the existing
%      singleton*.
%
%      H = MATLAB_ARDUINO_3 returns the handle to a new MATLAB_ARDUINO_3 or the handle to
%      the existing singleton*.
%
%      MATLAB_ARDUINO_3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MATLAB_ARDUINO_3.M with the given input arguments.
%
%      MATLAB_ARDUINO_3('Property','Value',...) creates a new MATLAB_ARDUINO_3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before matlab_arduino_3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to matlab_arduino_3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help matlab_arduino_3

% Last Modified by GUIDE v2.5 13-Dec-2019 22:17:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @matlab_arduino_3_OpeningFcn, ...
                   'gui_OutputFcn',  @matlab_arduino_3_OutputFcn, ...
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


% --- Executes just before matlab_arduino_3 is made visible.
function matlab_arduino_3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to matlab_arduino_3 (see VARARGIN)

% Choose default command line output for matlab_arduino_3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes matlab_arduino_3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = matlab_arduino_3_OutputFcn(hObject, eventdata, handles) 
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
a=arduino('com5');


% --- Executes on button press in discon01.
function discon01_Callback(hObject, eventdata, handles)
% hObject    handle to discon01 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear all;
disp('DisConnected');


% --- Executes on button press in read_0.
function read_0_Callback(hObject, eventdata, handles)
% hObject    handle to read_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
v = a.analogRead(0);
v = v*(5/1023);
set(handles.analog_0,'string',v);


% --- Executes on button press in led01.
function led01_Callback(hObject, eventdata, handles)
% hObject    handle to led01 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
a.pinMode(12,'output');
digitalWrite(a,12,1);



% --- Executes on button press in ledoff01.
function ledoff01_Callback(hObject, eventdata, handles)
% hObject    handle to ledoff01 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
a.pinMode(12,'output');
digitalWrite(a,12,0);


% --- Executes on button press in read_1.
function read_1_Callback(hObject, eventdata, handles)
% hObject    handle to read_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
v = a.analogRead(1);
v = v*(5/1023);
set(handles.analog_1,'string',v);


% --- Executes on button press in read_2.
function read_2_Callback(hObject, eventdata, handles)
% hObject    handle to read_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
v = a.analogRead(2);
v = v*(5/1023);
set(handles.analog_2,'string',v);

% --- Executes on button press in read_3.
function read_3_Callback(hObject, eventdata, handles)
% hObject    handle to read_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
v = a.analogRead(3);
v = v*(5/1023);
set(handles.analog_3,'string',v);


% --- Executes on button press in read_4.
function read_4_Callback(hObject, eventdata, handles)
% hObject    handle to read_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
v = a.analogRead(4);
v = v*(5/1023);
set(handles.analog_4,'string',v);
