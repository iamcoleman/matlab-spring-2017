function varargout = help_button(varargin)
% HELP_BUTTON MATLAB code for help_button.fig
%      HELP_BUTTON, by itself, creates a new HELP_BUTTON or raises the existing
%      singleton*.
%
%      H = HELP_BUTTON returns the handle to a new HELP_BUTTON or the handle to
%      the existing singleton*.
%
%      HELP_BUTTON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HELP_BUTTON.M with the given input arguments.
%
%      HELP_BUTTON('Property','Value',...) creates a new HELP_BUTTON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before help_button_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to help_button_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help help_button

% Last Modified by GUIDE v2.5 18-Apr-2017 11:56:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @help_button_OpeningFcn, ...
                   'gui_OutputFcn',  @help_button_OutputFcn, ...
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


% --- Executes just before help_button is made visible.
function help_button_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to help_button (see VARARGIN)

% Choose default command line output for help_button
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes help_button wait for user response (see UIRESUME)
% uiwait(handles.figure1);

set(handles.m,'String','');
set(handles.a,'String','');
set(handles.x,'String','');
set(handles.y,'String','');



% --- Outputs from this function are returned to the command line.
function varargout = help_button_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function m_Callback(hObject, eventdata, handles)
% hObject    handle to m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of m as text
%        str2double(get(hObject,'String')) returns contents of m as a double


% --- Executes during object creation, after setting all properties.
function m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x_Callback(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x as text
%        str2double(get(hObject,'String')) returns contents of x as a double


% --- Executes during object creation, after setting all properties.
function x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a_Callback(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a as text
%        str2double(get(hObject,'String')) returns contents of a as a double


% --- Executes during object creation, after setting all properties.
function a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_Callback(hObject, eventdata, handles)
% hObject    handle to y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y as text
%        str2double(get(hObject,'String')) returns contents of y as a double


% --- Executes during object creation, after setting all properties.
function y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in knowledge.
function knowledge_Callback(hObject, eventdata, handles)
% hObject    handle to knowledge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msgbox({'x=mag*cos(angle)'
    'y=mag*sin(angle)'
    'mag=sqrt(x^2+y^2)'
    'angle=tan^(-1)(y/x)'});


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.ma,'Value')==1)
    n1=str2double(get(handles.m,'String'));
    n2=str2double(get(handles.a,'String'));
    [x,y]=pol2cart(n2*pi/180,n1);
    if isnan(x)||isnan(y)
        set(handles.x,'String','');
        set(handles.y,'String','');
        errordlg('A number must be entered. Enter Again.');
    else
        set(handles.x,'String',num2str(x));
        set(handles.y,'String',num2str(y));
        
    end
elseif get(handles.xy,'Value')==1
    n3=str2double(get(handles.x,'String'));
    n4=str2double(get(handles.y,'String'));
    [a,m]=cart2pol(n3,n4);
    if isnan(a)||isnan(m)
        set(handles.m,'String','');
        set(handles.a,'String','');
        errordlg('A number must be entered. Enter Again.');
    else
        set(handles.m,'String',num2str(m));
        set(handles.a,'String',num2str(a*180/pi));
    end
end


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.m,'String','');
set(handles.a,'String','');
set(handles.x,'String','');
set(handles.y,'String','');
