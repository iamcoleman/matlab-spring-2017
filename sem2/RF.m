function varargout = RF(varargin)
% RF MATLAB code for RF.fig
%      RF, by itself, creates a new RF or raises the existing
%      singleton*.
%
%      H = RF returns the handle to a new RF or the handle to
%      the existing singleton*.
%
%      RF('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RF.M with the given input arguments.
%
%      RF('Property','Value',...) creates a new RF or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RF_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RF_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RF

% Last Modified by GUIDE v2.5 17-Apr-2017 20:29:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RF_OpeningFcn, ...
                   'gui_OutputFcn',  @RF_OutputFcn, ...
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


% --- Executes just before RF is made visible.
function RF_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RF (see VARARGIN)

% Choose default command line output for RF
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% Clear Callback
set(handles.x_1,'String','');
set(handles.x_2,'String','');
set(handles.x_3,'String','');
set(handles.x_4,'String','');
set(handles.x_5,'String','');

set(handles.y_1,'String','');
set(handles.y_2,'String','');
set(handles.y_3,'String','');
set(handles.y_4,'String','');
set(handles.y_5,'String','');

set(handles.r_1,'String','');
set(handles.r_2,'String','');
set(handles.r_3,'String','');
set(handles.r_4,'String','');
set(handles.r_5,'String','');

set(handles.a_1,'String','');
set(handles.a_2,'String','');
set(handles.a_3,'String','');
set(handles.a_4,'String','');
set(handles.a_5,'String','');

set(handles.R_x,'String','');
set(handles.R_y,'String','');

set(handles.R_r,'String','');
set(handles.R_a,'String','');

set(handles.f1c, 'String', '');
set(handles.f2c, 'String', '');
set(handles.f3c, 'String', '');
set(handles.f4c, 'String', '');
set(handles.f5c, 'String', '');
set(handles.rc, 'String', '');

% Plots
axes(handles.forces_graph);
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';

axes(handles.resultant_graph);
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';


% UIWAIT makes RF wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RF_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in num_forces.
function num_forces_Callback(hObject, eventdata, handles)
% hObject    handle to num_forces (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns num_forces contents as cell array
%        contents{get(hObject,'Value')} returns selected item from num_forces


% --- Executes during object creation, after setting all properties.
function num_forces_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num_forces (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


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



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


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



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


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



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x_1_Callback(hObject, eventdata, handles)
% hObject    handle to x_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x_1 as text
%        str2double(get(hObject,'String')) returns contents of x_1 as a double


% --- Executes during object creation, after setting all properties.
function x_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_1_Callback(hObject, eventdata, handles)
% hObject    handle to y_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_1 as text
%        str2double(get(hObject,'String')) returns contents of y_1 as a double


% --- Executes during object creation, after setting all properties.
function y_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_1_Callback(hObject, eventdata, handles)
% hObject    handle to r_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_1 as text
%        str2double(get(hObject,'String')) returns contents of r_1 as a double


% --- Executes during object creation, after setting all properties.
function r_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a_1_Callback(hObject, eventdata, handles)
% hObject    handle to a_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a_1 as text
%        str2double(get(hObject,'String')) returns contents of a_1 as a double


% --- Executes during object creation, after setting all properties.
function a_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R_x_Callback(hObject, eventdata, handles)
% hObject    handle to R_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R_x as text
%        str2double(get(hObject,'String')) returns contents of R_x as a double


% --- Executes during object creation, after setting all properties.
function R_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R_y_Callback(hObject, eventdata, handles)
% hObject    handle to R_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R_y as text
%        str2double(get(hObject,'String')) returns contents of R_y as a double


% --- Executes during object creation, after setting all properties.
function R_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R_r_Callback(hObject, eventdata, handles)
% hObject    handle to R_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R_r as text
%        str2double(get(hObject,'String')) returns contents of R_r as a double


% --- Executes during object creation, after setting all properties.
function R_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R_a_Callback(hObject, eventdata, handles)
% hObject    handle to R_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R_a as text
%        str2double(get(hObject,'String')) returns contents of R_a as a double


% --- Executes during object creation, after setting all properties.
function R_a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkF.
function checkF_Callback(hObject, eventdata, handles)
% hObject    handle to checkF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Force 1
force1x = str2double(get(handles.x_1,'String'));
force1y = str2double(get(handles.y_1,'String'));

[theta,rho] = cart2pol(force1x,force1y);
force1_to_r = rho;
force1_to_a = theta * (180/pi);

force1r = str2double(get(handles.r_1,'String'));
force1a = str2double(get(handles.a_1,'String'));

if (abs(force1_to_r - force1r) < 0.1) && (abs(force1_to_a - force1a) < 0.1)
    set(handles.f1c, 'String', 'Correct!');
else
    set(handles.f1c, 'String', 'Incorrect!');
end

% Force 2
force2x = str2double(get(handles.x_2,'String'));
force2y = str2double(get(handles.y_2,'String'));

[theta,rho] = cart2pol(force2x,force2y);
force2_to_r = rho;
force2_to_a = theta * (180/pi);

force2r = str2double(get(handles.r_2,'String'));
force2a = str2double(get(handles.a_2,'String'));

if (abs(force2_to_r - force2r) < 0.1) && (abs(force2_to_a - force2a) < 0.1)
    set(handles.f2c, 'String', 'Correct!');
else
    set(handles.f2c, 'String', 'Incorrect!');
end

% Force 3
force3x = str2double(get(handles.x_3,'String'));
force3y = str2double(get(handles.y_3,'String'));

[theta,rho] = cart2pol(force3x,force3y);
force3_to_r = rho;
force3_to_a = theta * (180/pi);

force3r = str2double(get(handles.r_3,'String'));
force3a = str2double(get(handles.a_3,'String'));

if (abs(force3_to_r - force3r) < 0.1) && (abs(force3_to_a - force3a) < 0.1)
    set(handles.f3c, 'String', 'Correct!');
else
    set(handles.f3c, 'String', 'Incorrect!');
end

% Force 4
force4x = str2double(get(handles.x_4,'String'));
force4y = str2double(get(handles.y_4,'String'));

[theta,rho] = cart2pol(force4x,force4y);
force4_to_r = rho;
force4_to_a = theta * (180/pi);

force4r = str2double(get(handles.r_4,'String'));
force4a = str2double(get(handles.a_4,'String'));

if (abs(force4_to_r - force4r) < 0.1) && (abs(force4_to_a - force4a) < 0.1)
    set(handles.f4c, 'String', 'Correct!');
else
    set(handles.f4c, 'String', 'Incorrect!');
end

% Force 5
force5x = str2double(get(handles.x_5,'String'));
force5y = str2double(get(handles.y_5,'String'));

[theta,rho] = cart2pol(force5x,force5y);
force5_to_r = rho;
force5_to_a = theta * (180/pi);

force5r = str2double(get(handles.r_5,'String'));
force5a = str2double(get(handles.a_5,'String'));

if (abs(force5_to_r - force5r) < 0.1) && (abs(force5_to_a - force5a) < 0.1)
    set(handles.f5c, 'String', 'Correct!');
else
    set(handles.f5c, 'String', 'Incorrect!');
end





% --- Executes on button press in checkR.
function checkR_Callback(hObject, eventdata, handles)
% hObject    handle to checkR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Resultant

% Get x coordinates
if isempty(get(handles.x_1,'String')) == 1
    x1 = 0;
else
    x1 = str2double(get(handles.x_1,'String'));
end

if isempty(get(handles.x_2,'String')) == 1
    x2 = 0;
else
    x2 = str2double(get(handles.x_2,'String'));
end

if isempty(get(handles.x_3,'String')) == 1
    x3 = 0;
else
    x3 = str2double(get(handles.x_3,'String'));
end

if isempty(get(handles.x_4,'String')) == 1
    x4 = 0;
else
    x4 = str2double(get(handles.x_4,'String'));
end

if isempty(get(handles.x_5,'String')) == 1
    x5 = 0;
else
    x5 = str2double(get(handles.x_5,'String'));
end

% Get y coordinates
if isempty(get(handles.y_1,'String')) == 1
    y1 = 0;
else
    y1 = str2double(get(handles.y_1,'String'));
end

if isempty(get(handles.y_2,'String')) == 1
    y2 = 0;
else
    y2 = str2double(get(handles.y_2,'String'));
end

if isempty(get(handles.y_3,'String')) == 1
    y3 = 0;
else
    y3 = str2double(get(handles.y_3,'String'));
end

if isempty(get(handles.y_4,'String')) == 1
    y4 = 0;
else
    y4 = str2double(get(handles.y_4,'String'));
end

if isempty(get(handles.y_5,'String')) == 1
    y5 = 0;
else
    y5 = str2double(get(handles.y_5,'String'));
end

% Sum all forces
sumx = (x1 + x2 + x3 + x4 + x5);
sumy = (y1 + y2 + y3 + y4 + y5);

% Get input x and y
forceRx = str2double(get(handles.R_x,'String'));
forceRy = str2double(get(handles.R_y,'String'));

% Make calculated a and r
[theta,rho] = cart2pol(sumx,sumy);
forceR_to_r = rho;
forceR_to_a = theta * (180/pi);

% Get input a and r
forceRr = str2double(get(handles.R_r,'String'));
forceRa = str2double(get(handles.R_a,'String'));

if (abs(forceRx - sumx) < 0.1) && (abs(forceRy - sumy) < 0.1) && (abs(forceR_to_r - forceRr) < 0.1) && (abs(forceR_to_a - forceRa) < 0.1)
    set(handles.rc, 'String', 'Correct!');
else
    set(handles.rc, 'String', 'Incorrect!');
end



function a_5_Callback(hObject, eventdata, handles)
% hObject    handle to a_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a_5 as text
%        str2double(get(hObject,'String')) returns contents of a_5 as a double


% --- Executes during object creation, after setting all properties.
function a_5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_5_Callback(hObject, eventdata, handles)
% hObject    handle to r_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_5 as text
%        str2double(get(hObject,'String')) returns contents of r_5 as a double


% --- Executes during object creation, after setting all properties.
function r_5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_5_Callback(hObject, eventdata, handles)
% hObject    handle to y_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_5 as text
%        str2double(get(hObject,'String')) returns contents of y_5 as a double


% --- Executes during object creation, after setting all properties.
function y_5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x_5_Callback(hObject, eventdata, handles)
% hObject    handle to x_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x_5 as text
%        str2double(get(hObject,'String')) returns contents of x_5 as a double


% --- Executes during object creation, after setting all properties.
function x_5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x_4_Callback(hObject, eventdata, handles)
% hObject    handle to x_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x_4 as text
%        str2double(get(hObject,'String')) returns contents of x_4 as a double


% --- Executes during object creation, after setting all properties.
function x_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_4_Callback(hObject, eventdata, handles)
% hObject    handle to y_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_4 as text
%        str2double(get(hObject,'String')) returns contents of y_4 as a double


% --- Executes during object creation, after setting all properties.
function y_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_4_Callback(hObject, eventdata, handles)
% hObject    handle to r_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_4 as text
%        str2double(get(hObject,'String')) returns contents of r_4 as a double


% --- Executes during object creation, after setting all properties.
function r_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a_4_Callback(hObject, eventdata, handles)
% hObject    handle to a_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a_4 as text
%        str2double(get(hObject,'String')) returns contents of a_4 as a double


% --- Executes during object creation, after setting all properties.
function a_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a_2_Callback(hObject, eventdata, handles)
% hObject    handle to a_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a_2 as text
%        str2double(get(hObject,'String')) returns contents of a_2 as a double


% --- Executes during object creation, after setting all properties.
function a_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_2_Callback(hObject, eventdata, handles)
% hObject    handle to r_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_2 as text
%        str2double(get(hObject,'String')) returns contents of r_2 as a double


% --- Executes during object creation, after setting all properties.
function r_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_2_Callback(hObject, eventdata, handles)
% hObject    handle to y_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_2 as text
%        str2double(get(hObject,'String')) returns contents of y_2 as a double


% --- Executes during object creation, after setting all properties.
function y_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x_2_Callback(hObject, eventdata, handles)
% hObject    handle to x_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x_2 as text
%        str2double(get(hObject,'String')) returns contents of x_2 as a double


% --- Executes during object creation, after setting all properties.
function x_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a_3_Callback(hObject, eventdata, handles)
% hObject    handle to a_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a_3 as text
%        str2double(get(hObject,'String')) returns contents of a_3 as a double


% --- Executes during object creation, after setting all properties.
function a_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_3_Callback(hObject, eventdata, handles)
% hObject    handle to r_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_3 as text
%        str2double(get(hObject,'String')) returns contents of r_3 as a double


% --- Executes during object creation, after setting all properties.
function r_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_3_Callback(hObject, eventdata, handles)
% hObject    handle to y_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_3 as text
%        str2double(get(hObject,'String')) returns contents of y_3 as a double


% --- Executes during object creation, after setting all properties.
function y_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x_3_Callback(hObject, eventdata, handles)
% hObject    handle to x_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x_3 as text
%        str2double(get(hObject,'String')) returns contents of x_3 as a double


% --- Executes during object creation, after setting all properties.
function x_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in gf1.
function gf1_Callback(hObject, eventdata, handles)
% hObject    handle to gf1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of gf1



% --- Executes on button press in gf2.
function gf2_Callback(hObject, eventdata, handles)
% hObject    handle to gf2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of gf2


% --- Executes on button press in gf3.
function gf3_Callback(hObject, eventdata, handles)
% hObject    handle to gf3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of gf3


% --- Executes on button press in gf4.
function gf4_Callback(hObject, eventdata, handles)
% hObject    handle to gf4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of gf4


% --- Executes on button press in gf5.
function gf5_Callback(hObject, eventdata, handles)
% hObject    handle to gf5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of gf5


% --- Executes on button press in instructions.
function instructions_Callback(hObject, eventdata, handles)
% hObject    handle to instructions (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msgbox({'Welcome!'
    ''
    'Input both Rectangular and Polar Coordinates into however many force panels you would like to check.'
    ''
    'Press "Check Forces" to see if you are correct!'
    ''
    'Input your calculated Resultant Force and press "Check Resultant" to see if you are correct!'
    ''
    'Check however many forces you would like to have graphed and then press "Graph Forces".'
    ''
    'Press "Clear" if you would like to start over.'
    ''
    'Press "Help Me!" if you need help calculating Rectangular or Polar Coordinates.'})


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.x_1,'String','');
set(handles.x_2,'String','');
set(handles.x_3,'String','');
set(handles.x_4,'String','');
set(handles.x_5,'String','');

set(handles.y_1,'String','');
set(handles.y_2,'String','');
set(handles.y_3,'String','');
set(handles.y_4,'String','');
set(handles.y_5,'String','');

set(handles.r_1,'String','');
set(handles.r_2,'String','');
set(handles.r_3,'String','');
set(handles.r_4,'String','');
set(handles.r_5,'String','');

set(handles.a_1,'String','');
set(handles.a_2,'String','');
set(handles.a_3,'String','');
set(handles.a_4,'String','');
set(handles.a_5,'String','');

set(handles.R_x,'String','');
set(handles.R_y,'String','');

set(handles.R_r,'String','');
set(handles.R_a,'String','');

set(handles.f1c, 'String', '');
set(handles.f2c, 'String', '');
set(handles.f3c, 'String', '');
set(handles.f4c, 'String', '');
set(handles.f5c, 'String', '');
set(handles.rc, 'String', '');


axes(handles.forces_graph);
cla reset;
axes(handles.resultant_graph);
cla reset;


% --- Executes on button press in gf_button.
function gf_button_Callback(hObject, eventdata, handles)
% hObject    handle to gf_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

axes(handles.forces_graph);
cla reset;
axes(handles.resultant_graph);
cla reset;

% Force 1
if (get(handles.gf1,'Value') == 1) && (strcmp(get(handles.f1c,'String'),'Correct!') == 1)
    x = str2double(get(handles.x_1,'String'));
    y = str2double(get(handles.y_1,'String'));
    axes(handles.forces_graph);
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    plot([0 x], [0 y],'b');
    axis square;
    hold on;
else
end

% Force 2
if (get(handles.gf2,'Value') == 1) && (strcmp(get(handles.f2c,'String'),'Correct!') == 1)
    x = str2double(get(handles.x_2,'String'));
    y = str2double(get(handles.y_2,'String'));
    axes(handles.forces_graph);
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    plot([0 x], [0 y],'r');
    axis square;
    hold on;
else
end

% Force 3
if (get(handles.gf3,'Value') == 1) && (strcmp(get(handles.f3c,'String'),'Correct!') == 1)
    x = str2double(get(handles.x_3,'String'));
    y = str2double(get(handles.y_3,'String'));
    axes(handles.forces_graph);
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    plot([0 x], [0 y],'g');
    axis square;
    hold on;
else
end

% Force 4
if (get(handles.gf4,'Value') == 1) && (strcmp(get(handles.f4c,'String'),'Correct!') == 1)
    x = str2double(get(handles.x_4,'String'));
    y = str2double(get(handles.y_4,'String'));
    axes(handles.forces_graph);
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    plot([0 x], [0 y],'c');
    axis square;
    hold on;
else
end

% Force 5
if (get(handles.gf5,'Value') == 1) && (strcmp(get(handles.f5c,'String'),'Correct!') == 1)
    x = str2double(get(handles.x_5,'String'));
    y = str2double(get(handles.y_5,'String'));
    axes(handles.forces_graph);
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    plot([0 x], [0 y],'m');
    axis square;
    hold on;
else
end

% Force R
if (strcmp(get(handles.rc,'String'),'Correct!') == 1)
    x = str2double(get(handles.R_x,'String'));
    y = str2double(get(handles.R_y,'String'));
    axes(handles.resultant_graph);
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    plot([0 x], [0 y],'k');
    axis square;
    hold on;
else
end


% --- Executes on button press in help.
function help_Callback(hObject, eventdata, handles)
% hObject    handle to help (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
help_button;
