function varargout = matlab_arduino_6(varargin)
% MATLAB_ARDUINO_6 MATLAB code for matlab_arduino_6.fig
%      MATLAB_ARDUINO_6, by itself, creates a new MATLAB_ARDUINO_6 or raises the existing
%      singleton*.
%
%      H = MATLAB_ARDUINO_6 returns the handle to a new MATLAB_ARDUINO_6 or the handle to
%      the existing singleton*.
%
%      MATLAB_ARDUINO_6('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MATLAB_ARDUINO_6.M with the given input arguments.
%
%      MATLAB_ARDUINO_6('Property','Value',...) creates a new MATLAB_ARDUINO_6 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before matlab_arduino_6_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to matlab_arduino_6_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help matlab_arduino_6

% Last Modified by GUIDE v2.5 14-Dec-2019 06:12:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @matlab_arduino_6_OpeningFcn, ...
                   'gui_OutputFcn',  @matlab_arduino_6_OutputFcn, ...
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


% --- Executes just before matlab_arduino_6 is made visible.
function matlab_arduino_6_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to matlab_arduino_6 (see VARARGIN)

% Choose default command line output for matlab_arduino_6
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes matlab_arduino_6 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = matlab_arduino_6_OutputFcn(hObject, eventdata, handles) 
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
disp('DisConnect');


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pwm01.
function pwm01_Callback(hObject, eventdata, handles)
% hObject    handle to pwm01 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
t = get(handles.edit1,'string');
t = str2double(t);
a.pinMode(11,'output');
a.analogWrite(11,t);
