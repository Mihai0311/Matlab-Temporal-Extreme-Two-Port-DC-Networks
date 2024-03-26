function Circuit_Temporal_Min_Two_port

Fig=figure('Name','TMIN',...
'NumberTitle','off');
w= imread('T_MIN.jpeg'); 
imshow(w, 'InitialMagnification', 100); 
title('Temporal MIN Two port');


uicontrol('Style','pushbutton',...
'Units','normalized',...
'Position',[0.75 0.03 0.2 0.08],...
'String','CLOSE',...
'Callback','close;');
end