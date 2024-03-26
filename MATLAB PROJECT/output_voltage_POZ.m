function displayPositivePeak(~, ~, inputVoltageEdit, resultLabel)
    try
        % Get input voltage from user input
        Vin = str2num(inputVoltageEdit.String);

        % Diode threshold voltage for positive peaks (assumed to be 0.7V)
        Vd = 0.7;

        charge=0;

        % Calculate the positive peak output voltage
        if Vin >= Vd
            % Simulate charging of the capacitor (only during the first positive cycle)
            charge = Vin - Vd;
            Vo = charge;
        else
            Vo = Vin;
        end

        % Display the result
        resultLabel.String = sprintf('Positive Peak (Vo): %.2f V', Vo);
    catch
        % Handle invalid input (non-numeric values)
        resultLabel.String = 'Invalid input. Please enter numeric values.';
    end
end