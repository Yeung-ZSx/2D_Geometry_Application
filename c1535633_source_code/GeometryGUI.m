function varargout = GeometryGUI(varargin)
% GEOMETRYGUI MATLAB code for GeometryGUI.fig
%      GEOMETRYGUI, by itself, creates a new GEOMETRYGUI or raises the existing
%      singleton*.
%
%      H = GEOMETRYGUI returns the handle to a new GEOMETRYGUI or the handle to
%      the existing singleton*.
%
%      GEOMETRYGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GEOMETRYGUI.M with the given input arguments.
%
%      GEOMETRYGUI('Property','Value',...) creates a new GEOMETRYGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GeometryGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GeometryGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GeometryGUI

% Last Modified by GUIDE v2.5 09-Dec-2016 20:33:25

% Begin initialization code - DO NOT EDIT

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GeometryGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GeometryGUI_OutputFcn, ...
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


% --- Executes just before GeometryGUI is made visible.
function GeometryGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GeometryGUI (see VARARGIN)

% Choose default command line output for GeometryGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GeometryGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);

clear all; clc;
% --- Outputs from this function are returned to the command line.
function varargout = GeometryGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
handles.lines = [];
handles.circle = [];
guidata(hObject, handles);


function x_input_Callback(hObject, eventdata, handles)
% hObject    handle to x_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x_input as text
%        str2double(get(hObject,'String')) returns contents of x_input as a double
x_input = str2double(get(hObject, 'String'));
if isnan(x_input)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% --- Executes during object creation, after setting all properties.
function x_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_input_Callback(hObject, eventdata, handles)
% hObject    handle to y_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_input as text
%        str2double(get(hObject,'String')) returns contents of y_input as a double
y_input = str2double(get(hObject, 'String'));
if isnan(y_input)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% --- Executes during object creation, after setting all properties.
function y_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_input_Callback(hObject, eventdata, handles)
% hObject    handle to r_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_input as text
%        str2double(get(hObject,'String')) returns contents of r_input as a double
r_input = str2double(get(hObject, 'String'));
if isnan(r_input)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% --- Executes during object creation, after setting all properties.
function r_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_Circle.
function btn_Circle_Callback(hObject, eventdata, handles)
% hObject    handle to btn_Circle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axis(handles.axes1);
x=str2double(get(handles.x_input,'String'));
y=str2double(get(handles.y_input,'String'));
r=str2double(get(handles.r_input,'String'));
circle(x,y,r);
handles.circle = [x,y,r; handles.circle];
        if isnan(handles.circle)
            errordlg('No Circles have been plotted');
        elseif isnan(x)
            errordlg('No x co-ordinate has been plotted');
        elseif isnan(y)
            errordlg('No y co-ordinate has been plotted');
        elseif isnan(r)
            errordlg('No Radius has been plotted');
        end
guidata(hObject, handles);
%disp(handles.circle);



function x1_input_Callback(hObject, eventdata, handles)
% hObject    handle to x1_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x1_input as text
%        str2double(get(hObject,'String')) returns contents of x1_input as a double
x1_input = str2double(get(hObject, 'String'));
if isnan(x1_input)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% --- Executes during object creation, after setting all properties.
function x1_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x1_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x2_input_Callback(hObject, eventdata, handles)
% hObject    handle to x2_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x2_input as text
%        str2double(get(hObject,'String')) returns contents of x2_input as a double
x2_input = str2double(get(hObject, 'String'));
if isnan(x2_input)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% --- Executes during object creation, after setting all properties.
function x2_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x2_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function y1_input_Callback(hObject, eventdata, handles)
% hObject    handle to y1_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y1_input as text
%        str2double(get(hObject,'String')) returns contents of y1_input as a double
y1_input = str2double(get(hObject, 'String'));
if isnan(y1_input)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% --- Executes during object creation, after setting all properties.
function y1_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y1_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y2_input_Callback(hObject, eventdata, handles)
% hObject    handle to y2_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y2_input as text
%        str2double(get(hObject,'String')) returns contents of y2_input as a double
y2_input = str2double(get(hObject, 'String'));
if isnan(y2_input)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% --- Executes during object creation, after setting all properties.
function y2_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y2_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_Line.
function btn_Line_Callback(hObject, eventdata, handles)
% hObject    handle to btn_Line (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axis(handles.axes1);
% global x1
% global y1
x1=str2double(get(handles.x1_input,'String'));
y1=str2double(get(handles.y1_input,'String'));
x2=str2double(get(handles.x2_input,'String'));
y2=str2double(get(handles.y2_input,'String'));
lines(x1,y1,x2,y2);
handles.lines = [x1,y1,x2,y2; handles.lines];
disp(handles.lines);
guidata(hObject, handles);
        if isnan(handles.lines)
            errordlg('No Lines have been plotted');
        elseif isnan(x1)
            errordlg('No First x co-ordinate has been plotted');
        elseif isnan(y1)
            errordlg('No First y co-ordinate has been plotted');
        elseif isnan(x2)
            errordlg('No Second x co-ordinate has been plotted');
        elseif isnan(y2)
            errordlg('No Second y co-ordinate has been plotted');
        end

% --- Executes on button press in btn_clear.
function btn_clear_Callback(hObject, eventdata, handles)
% hObject    handle to btn_clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 
resetaxis = get(gca, 'children');
delete(resetaxis(1));


% --- Executes on button press in btn_Intersect.
function btn_Intersect_Callback(hObject, eventdata, handles)
 for m =1: size(handles.circle)
     center = handles.circle(m,1:2);
     radius = handles.circle(m,3);
    for i = m+1: size(handles.circle) 
        center2 = handles.circle(i,1:2);
        radius2 = handles.circle(i,3);
        [ num_int, p ] = circles_imp_int_2d ( radius, center, radius2, center2 )
        hold on;
        plot(p(1,:),p(2,:),'or','MarkerSize',5,'MarkerFaceColor','r');
    end
 end

for n =1: size(handles.lines)
    x1 = handles.lines(n,1:2);
    y1 = handles.lines(n,3:4);
   for j = n+1: size(handles.lines) 
    x2 = handles.lines(j,1:2);
    y2 = handles.lines(j,3:4);
    Z = linesegintersect(x1, y1, x2, y2);
    hold on;
    if Z > 0
    plot(Z(1,:),Z(2,:),'or','MarkerSize',5,'MarkerFaceColor','r');
    end
   end
end
  for o=1: size(handles.lines)
      x_1 = handles.lines(o,1:2);
      y_1 = handles.lines(o,3:4);
      [f,g,x0,y0] = line_exp2par_2d(x_1,y_1);
      for z=1: size(handles.circle)
          center = handles.circle(z,1:2);
          radius = handles.circle(z,3);
          [num_int ,v ] = circle_imp_line_par_int_2d(radius,center, x0,y0, f,g);
          hold on;
            if num_int > 1 
            preX1=handles.lines(o,1);
            preY1=handles.lines(o,2);
            preX2=handles.lines(o,3);
            preY2=handles.lines(o,4);
  
            minXPnt=min(preX1,preX2);
            minYPnt=min(preY1,preY2);
            maxXPnt=max(preX1,preX2);
            maxYPnt=max(preY1,preY2);
            hold on;
            if v >= minXPnt & v >= minYPnt & v <= maxXPnt & v <= maxYPnt
                plot(v(1,:), v(2,:),'or','MarkerSize',5,'MarkerFaceColor','r');
            end
            if minXPnt <= v(1,1) & v(1,1) <= maxXPnt & minYPnt <= v(2,1) & v(2,1) <= maxYPnt
                plot(v(1,1),v(2,1),'or','MarkerSize',5,'MarkerFaceColor','r');
            elseif minXPnt <= v(1,2) & v(1,2) <= maxXPnt & minYPnt <= v(2,2) & v(2,2) <= maxYPnt
                plot(v(1,2), v(2,2),'or','MarkerSize',5,'MarkerFaceColor','r');
            end
            end
      end
  end

% --- Executes on button press in btn_reset_coord.
function btn_reset_coord_Callback(hObject, eventdata, handles)
% hObject    handle to btn_reset_coord (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.x1_input,'String','');
set(handles.x2_input,'String','');
set(handles.y1_input,'String','');
set(handles.y2_input,'String','');


% --- Executes on button press in btn_reset_circ.
function btn_reset_circ_Callback(hObject, eventdata, handles)
% hObject    handle to btn_reset_circ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.x_input,'String','');
set(handles.y_input,'String','');
set(handles.r_input,'String','');


% --- Executes on button press in btn_Rand_Lines.
function btn_Rand_Lines_Callback(hObject, eventdata, handles)
% hObject    handle to btn_Rand_Lines (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rx1 = round(rand(1)*500)
rx2 = round(rand(1)*500)
ry1 = round(rand(1)*500)
ry2 = round(rand(1)*500)
set(handles.x1_input,'String',rx1);
set(handles.x2_input,'String',rx2);
set(handles.y1_input,'String',ry1);
set(handles.y2_input,'String',ry2);


% --- Executes on button press in btn_Rand_Circle.
function btn_Rand_Circle_Callback(hObject, eventdata, handles)
% hObject    handle to btn_Rand_Circle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rx = round(rand(1)*500)
ry = round(rand(1)*500)
rr = round(rand(1)*500)

set(handles.x_input,'String',rx);
set(handles.y_input,'String',ry);
set(handles.r_input,'String',rr);


% --- Executes on button press in btn_Save.
function btn_Save_Callback(hObject, eventdata, handles)
% hObject    handle to btn_Save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input = ('Please enter your filename: ')
title = 'Save As';
filename = inputdlg(input,title,[1 25]); 
saveas(gcf, filename{1}, 'fig');

% --- Executes on button press in btn_Open.
function btn_Open_Callback(hObject, eventdata, handles)
% hObject    handle to btn_Open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input = ('Please enter your file name: ')
title = 'Open New (.fig)';
filename = inputdlg(input,title,[1 25]);
close(gcf);
openfig(strcat(filename{1},'.fig'), 'reuse');


% --- Executes on button press in btn_Print.
function btn_Print_Callback(hObject, eventdata, handles)
% hObject    handle to btn_Print (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    s = get(handles.axes1, 'Parent')
    print(s)
