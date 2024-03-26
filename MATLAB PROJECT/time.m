function displayTimeChart(~, ~, peakType, inputVoltageEdit)
    try
        % Get input voltage from user input
        Vin = str2double(inputVoltageEdit.String);

        % Diode threshold voltage
        Vd = 0.7;

        % Time constant for charging (adjust as needed)
        RC = 0.1;

        % Create time vector for t = 0 to 3s with a step of 0.01s
        t = 0:0.01:3;

        % Initialize capacitor charge
        charge = 0;

        % Calculate Vi and Vo for positive peak
        Vi_positive = Vin * sin(2 * pi * t);  % Replace with your function for Vi
        Vo_positive = zeros(size(t));

        % Simulate charging of the capacitor (only during the first positive cycle)
        
         if Vin>0
        
        for i = 1:length(t)
            if Vin > 0 && charge == 0
                charge = Vin - Vd;
            end
            Vo_positive(i) = charge * (1 - exp(-t(i) / RC));
           
        end

        else

                  for i = 1:length(t)
            if Vin > 0 && charge == 0
                charge = Vin + Vd;
            end
            Vo_positive(i) = charge * (1 - exp(-t(i) / RC));
                  end

        end 

        % Calculate Vi and Vo for negative peak
        Vi_negative = Vin * sin(2 * pi * t);  % Replace with your function for Vi
        Vo_negative = zeros(size(t));

        % Simulate charging of the capacitor (only during the first negative cycle)
        charge = 0;

Vd=-0.7;

if Vin<0

        for i = 1:length(t)
            if Vin < 0 && charge == 0
                charge = -Vin + Vd;
            end
            Vo_negative(i) = -charge * (1 - exp(-t(i) / RC));
            
        end

              for i = 1:length(t)
            if Vin < 0 && charge == 0
                charge = -Vin + Vd;
            end
            Vo_negative(i) = -charge * (1 - exp(-t(i) / RC));
              end


end
        % Plot Vi and Vo for positive peak
        if strcmp(peakType, 'positive')
            figure;
            plot(t, Vi_positive, 'b', 'LineWidth', 2);
            hold on;
            plot(t, Vo_positive, 'r', 'LineWidth', 2);
            xlabel('Time (s)');
            ylabel('Voltage (V)');
            title(['Positive Peak - Vi and Vo for Vin = ', num2str(Vin)]);
            legend('Vi', 'Vo');
            grid on;
            ylim([min(Vi_positive), max(Vi_positive)]);  % Set y-axis limits
            hold off;
        end

        % Plot Vi and Vo for negative peak
        if strcmp(peakType, 'negative')
            figure;
            plot(t, Vi_negative, 'b', 'LineWidth', 2);
            hold on;
            plot(t, Vo_negative, 'r', 'LineWidth', 2);
            xlabel('Time (s)');
            ylabel('Voltage (V)');
            title(['Negative Peak - Vi and Vo for Vin = ', num2str(Vin)]);
            legend('Vi', 'Vo');
            grid on;
            ylim([min(Vi_negative), max(Vi_negative)]);  % Set y-axis limits
            hold off;
        end
    catch
        % Handle invalid input (non-numeric values)
        disp('Invalid input. Please enter numeric values.');
    end
end

