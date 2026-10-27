clc;
clear;
close all;

% Distance from each ambulance to each location (km)
distance = [5 12 8;
    10 4 6;
    3 7 5];

locationNames = {'Location A', 'Location B', 'Location C'};

% Plot grouped bar chart
figure;

bar(distance');

title('Ambulance Distance to Emergency Locations');
xlabel('Emergency Location');
ylabel('Distance (km)');

xticks(1:3);
xticklabels(locationNames);

legend('Ambulance 1', 'Ambulance 2', 'Ambulance 3', ...
    'Location', 'northeast');

ylim([0 14]);
yticks(0:2:14);

grid on;

% Display distance values above each bar
hold on;

for i = 1:3
    for j = 1:3
        x = i + (j-2)*0.25;
        y = distance(j,i);

        text(x, y+0.2, num2str(y), ...
            'HorizontalAlignment', 'center', ...
            'FontWeight', 'bold');
    end
end

hold off;