function varargout = Help_Final(varargin)
% HELP_FINAL MATLAB code for Help_Final.fig
%      HELP_FINAL, by itself, creates a new HELP_FINAL or raises the existing
%      singleton*.
%
%      H = HELP_FINAL returns the handle to a new HELP_FINAL or the handle to
%      the existing singleton*.
%
%      HELP_FINAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HELP_FINAL.M with the given input arguments.
%
%      HELP_FINAL('Property','Value',...) creates a new HELP_FINAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Help_Final_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Help_Final_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Help_Final

% Last Modified by GUIDE v2.5 17-Apr-2017 21:16:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Help_Final_OpeningFcn, ...
                   'gui_OutputFcn',  @Help_Final_OutputFcn, ...
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


% --- Executes just before Help_Final is made visible.
function Help_Final_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Help_Final (see VARARGIN)
set(handles.edit1,'String','');
set(handles.edit2,'String','');
set(handles.edit3,'String','');
set(handles.edit4,'String','');
% Choose default command line output for Help_Final
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Help_Final wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Help_Final_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;





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




% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'String','');
set(handles.edit2,'String','');
set(handles.edit3,'String','');
set(handles.edit4,'String','');
% --- Executes on button press in stuff.
function stuff_Callback(hObject, eventdata, handles)
% hObject    handle to stuff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msgbox('x=mag*cos(angle) y=mag*sin(angle) mag=sqrt(x^2+y^2) angle=tan^(-1)(y/x)');

% --- Executes on button press in calc.
function calc_Callback(hObject, eventdata, handles)
% hObject    handle to calc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.ma,'Value')==1)
    n1=str2double(get(handles.edit1,'String'));
    n2=str2double(get(handles.edit2,'String'));
    [x,y]=pol2cart(n2*pi/180,n1);
    if isnan(x)||isnan(y)
        set(handles.edit3,'String','');
        set(handles.edit4,'String','');
        errordlg('A number must be entered. Enter Again.');
    else
        set(handles.edit3,'String',num2str(x));
        set(handles.edit4,'String',num2str(y));
        
    end
elseif get(handles.xy,'Value')==1
    n3=str2double(get(handles.edit3,'String'));
    n4=str2double(get(handles.edit4,'String'));
    [a,m]=cart2pol(n3,n4);
    if isnan(a)||isnan(m)
        set(handles.edit1,'String','');
        set(handles.edit2,'String','');
        errordlg('A number must be entered. Enter Again.');
    else
        set(handles.edit1,'String',num2str(m));
        set(handles.edit2,'String',num2str(a*180/pi));
    end
end        

% --- Executes on button press in radiobutton1.
function ma_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hint: get(hObject,'Value') returns toggle state of radiobutton1
% --- Executes on button press in radiobutton2.
function xy_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2

