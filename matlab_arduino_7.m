function varargout = matlab_arduino_7(varargin)
% MATLAB_ARDUINO_7 MATLAB code for matlab_arduino_7.fig
%      MATLAB_ARDUINO_7, by itself, creates a new MATLAB_ARDUINO_7 or raises the existing
%      singleton*.
%
%      H = MATLAB_ARDUINO_7 returns the handle to a new MATLAB_ARDUINO_7 or the handle to
%      the existing singleton*.
%
%      MATLAB_ARDUINO_7('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MATLAB_ARDUINO_7.M with the given input arguments.
%
%      MATLAB_ARDUINO_7('Property','Value',...) creates a new MATLAB_ARDUINO_7 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before matlab_arduino_7_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to matlab_arduino_7_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help matlab_arduino_7

% Last Modified by GUIDE v2.5 14-Dec-2019 07:07:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @matlab_arduino_7_OpeningFcn, ...
                   'gui_OutputFcn',  @matlab_arduino_7_OutputFcn, ...
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


% --- Executes just before matlab_arduino_7 is made visible.
function matlab_arduino_7_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to matlab_arduino_7 (see VARARGIN)

% Choose default command line output for matlab_arduino_7
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes matlab_arduino_7 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = matlab_arduino_7_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in forward01.
function forward01_Callback(hObject, eventdata, handles)
% hObject    handle to forward01 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
deep = get(handles.edit_forward,'string');
deep = str2double(deep);
a.pinMode(3,'output');
a.pinMode(5,'output');
a.pinMode(6,'output');
a.pinMode(9,'output');

a.analogWrite(3,deep);
a.analogWrite(5,0);
a.analogWrite(6,deep);
a.analogWrite(9,0);

% --- Executes on button press in forward_stop.
function forward_stop_Callback(hObject, eventdata, handles)
% hObject    handle to forward_stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
a.pinMode(3,'output');
a.pinMode(5,'output');
a.pinMode(6,'output');
a.pinMode(9,'output');

a.analogWrite(3,0);
a.analogWrite(5,0);
a.analogWrite(6,0);
a.analogWrite(9,0);



function edit_forward_Callback(hObject, eventdata, handles)
% hObject    handle to edit_forward (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_forward as text
%        str2double(get(hObject,'String')) returns contents of edit_forward as a double


% --- Executes during object creation, after setting all properties.
function edit_forward_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_forward (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


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
