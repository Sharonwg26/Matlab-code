%% Define the trivial plot.. 
x = -3*pi:pi/10:3*pi;
y1 = sin(x);
y2 = cos(x);

%% complete the plot..
    %% figure with tag 1
gHand_1 = plot(x, y1);
tag = 1;
setting_figure(gHand_1, tag);
hold on;

    %% figure with tag 2
gHand_2 = plot(x, y2);
tag = 2;
setting_figure(gHand_2, tag);
hold off;

%% event handler..
event = waitforbuttonpress;
while event==0 
   handle=gco;
   fprintf('The LineWidth is %d and the LineStyle is %s \n',get(handle,'LineWidth'),get(handle,'LineStyle'));
   yn=input('finish ?','s');
   if yn=='n'
        fprintf('then click the line ~ ~');
        event = waitforbuttonpress;
   else
       event =1;
   end
end

%% It's time to show your hack..
function setting_figure(gHand, tag)
    if tag==1
        set(gHand, 'Color','y','linewidth', 5, 'linestyle', ':');
    else
        set(gHand,'Color','g','linewidth',3,'linestyle', '--');
    end
end