function displayNegativePeak(~, ~, inputVoltageEdit, resultLabel)
    try
        % Get input voltage from user input
        Vin = str2num(inputVoltageEdit.String);
        % Diode threshold voltage for negative peaks (assumed to be -0.7V)
        Vd = -0.7;

     charge=0;

        % Calculate the negative peak output voltage
        if Vin <= Vd
            % Charge the capacitor instantly during the first negative half-cycle
            Vo = -Vin + Vd;
        else
            % Stay at the charged voltage if Vin is positive
            Vo = Vin;
        end

        % Display the result
        resultLabel.String = sprintf('Negative Peak (Vo): %.2f V', Vo);
    catch
        % Handle invalid input (non-numeric values)
        resultLabel.String = 'Invalid input. Please enter numeric values.';
    end
end