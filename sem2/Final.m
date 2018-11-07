function varargout = Final(varargin)
% FINAL MATLAB code for Final.fig
%      FINAL, by itself, creates a new FINAL or raises the existing
%      singleton*.
%
%      H = FINAL returns the handle to a new FINAL or the handle to
%      the existing singleton*.
%
%      FINAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FINAL.M with the given input arguments.
%
%      FINAL('Property','Value',...) creates a new FINAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Final_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Final_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Final

% Last Modified by GUIDE v2.5 13-Apr-2017 14:43:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Final_OpeningFcn, ...
                   'gui_OutputFcn',  @Final_OutputFcn, ...
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


% --- Executes just before Final is made visible.
function Final_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Final (see VARARGIN)

% Choose default command line output for Final
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Final wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Final_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Info.
function Info_Callback(hObject, eventdata, handles)
% hObject    handle to Info (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msgbox('Enter the data in the Table to check and store your values. Check all the forces you would like to plot by putting 1 for choosing and 0 for ignoring . Press clear to remove data. ','INSTRUCTIONS');


% --- Executes on button press in Button.
function Button_Callback(hObject, eventdata, handles)
% hObject    handle to Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%set(handles.uitable1,'Data','');
table={'','','','',''};
set(handles.uitable1,'Data',table);
set(handles.uitable1,'RowName','F1'); %only keeps the first row and removes the rest
axes(handles.axes1);
           cla;

% --- Executes on button press in store.
function store_Callback(hObject, eventdata, handles)
% hObject    handle to store (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

        %magnitude and angle
        table=get(handles.uitable1,'Data');
        [r,c] = size(table);
        n1=str2double(table{r,1});
        n2=str2double(table{r,2});
        n3=str2double(table{r,3});
        n4=str2double(table{r,4});
        n5=str2double(table{r,5});        
        if (isnan(n1)|| isnan(n2)|| isnan(n3)|| isnan(n4)|| isnan(n5))
           table{r,1} = '';
           table{r,2} = '';
           table{r,3} = '';
           table{r,4} = '';
           table{r,5} = '';
           set(handles.uitable1,'Data',table);
           errordlg('A number must be entered. Enter again');
        else
           x=n1*cosd(n2);y=n1*sind(n2);
           if( n3>=x-0.01 && n3<=x+0.01  && n4>=y-0.01 && n4<= y+0.01 ) 
               msgbox('Correct!');
               %Plotting the forces
           axes(handles.axes1);
           cla;
           hold on; % plots all on same graph
           for q=1:r
           if str2double(table{q,5})==1
               axes(handles.axes1);
               plot([0 str2double(table{q,3})],[0 str2double(table{q,4})]);
           end
           end
           hold off;
               
           table{r+1,1} = ''; %entering into next row
           table{r+1,2} = '';
           table{r+1,3} = '';
           table{r+1,4} = '';
           table{r+1,5} = '';
           
           set(handles.uitable1,'Data',table);
           rl=get(handles.uitable1,'RowName');
           rl{r+1}=['F',num2str(r+1)];
           set(handles.uitable1,'RowName',rl);
           else
           table{r,1} = '';
           table{r,2} = '';
           table{r,3} = '';
           table{r,4} = '';
           table{r,5} = '';
           set(handles.uitable1,'Data',table);
           errordlg('Wrong answer. Enter again');
           end
           
        end


% --- Executes on button press in help.
function help_Callback(hObject, eventdata, handles)
% hObject    handle to help (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
