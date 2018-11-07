function varargout = Lab9(varargin)
% LAB9 MATLAB code for Lab9.fig
%      LAB9, by itself, creates a new LAB9 or raises the existing
%      singleton*.
%
%      H = LAB9 returns the handle to a new LAB9 or the handle to
%      the existing singleton*.
%
%      LAB9('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LAB9.M with the given input arguments.
%
%      LAB9('Property','Value',...) creates a new LAB9 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Lab9_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Lab9_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Lab9

% Last Modified by GUIDE v2.5 06-Mar-2017 10:31:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Lab9_OpeningFcn, ...
                   'gui_OutputFcn',  @Lab9_OutputFcn, ...
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


% --- Executes just before Lab9 is made visible.
function Lab9_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Lab9 (see VARARGIN)

% Choose default command line output for Lab9
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Lab9 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Lab9_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in UnitMenu.
function UnitMenu_Callback(hObject, eventdata, handles)
% hObject    handle to UnitMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns UnitMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from UnitMenu

menu_choice = get(handles.UnitMenu, 'Value');
switch menu_choice
    case 1
        unit1 = 'Miles';
        unit2 = 'Kilometers';
        set(handles.Unit1, 'String',unit1);
        set(handles.Unit2, 'String',unit2);
        
        set(handles.Value1, 'String','');
        set(handles.Value2, 'String','');
    case 2
        unit1 = 'Celsius';
        unit2 = 'Fahrenheit';
        set(handles.Unit1, 'String',unit1);
        set(handles.Unit2, 'String',unit2);
        
        set(handles.Value1, 'String','');
        set(handles.Value2, 'String','');
end


% --- Executes during object creation, after setting all properties.
function UnitMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to UnitMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Button.
function Button_Callback(hObject, eventdata, handles)
% hObject    handle to Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.Value1, 'String','');
set(handles.Value2, 'String','');



function Value1_Callback(hObject, eventdata, handles)
% hObject    handle to Value1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Value1 as text
%        str2double(get(hObject,'String')) returns contents of Value1 as a double

menu_choice = get(handles.UnitMenu, 'Value');
switch menu_choice
    case 1
        str = get(handles.Value1,'String');
        if isempty(str2num(str))
            set(handles.Value1,'string','0');
            warndlg('Input must be numerical');
        end
        
        dist = str2double(get(handles.Value1,'String'));
        newdist = dist*1.60934;
        set(handles.Value2, 'String',newdist);
    case 2
        str = get(handles.Value1,'String');
        if isempty(str2num(str))
            set(handles.Value1,'string','0');
            warndlg('Input must be numerical');
        end
        temp = str2double(get(handles.Value1,'String'));
        newtemp = (temp*(9/5))+32;
        set(handles.Value2, 'String',newtemp);
end


% --- Executes during object creation, after setting all properties.
function Value1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Value1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Value2_Callback(hObject, eventdata, handles)
% hObject    handle to Value2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Value2 as text
%        str2double(get(hObject,'String')) returns contents of Value2 as a double

menu_choice = get(handles.UnitMenu, 'Value');
switch menu_choice
    case 1
        str = get(handles.Value2,'String');
        if isempty(str2num(str))
            set(handles.Value2,'string','0');
            warndlg('Input must be numerical');
        end
        
        dist = str2double(get(handles.Value2,'String'));
        newdist = dist*0.621371;
        set(handles.Value1, 'String',newdist);
    case 2
        str = get(handles.Value2,'String');
        if isempty(str2num(str))
            set(handles.Value2,'string','0');
            warndlg('Input must be numerical');
        end
        
        temp = str2double(get(handles.Value2,'String'));
        newtemp = (temp-32)*(5/9);
        set(handles.Value1, 'String',newtemp);
end


% --- Executes during object creation, after setting all properties.
function Value2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Value2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
