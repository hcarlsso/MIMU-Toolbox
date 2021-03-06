function inertial_data_scaled = scale_measurements(inertial_data, varargin)
% scale_measurements scale_raw_acc Scale raw_acc to m/s^2
% Sensitivity Scale Factor Acc
% AFS_SEL=0     16,384  LSB/g
% AFS_SEL=1     8,192   LSB/g
% AFS_SEL=2     4,096   LSB/g
% AFS_SEL=3     2,048   LSB/g

% Sensitivity Scale Factor Gyroscope 
% FS_SEL=0      131     LSB/(º/s)
% FS_SEL=1      65.5    LSB/(º/s)
% FS_SEL=2      32.8    LSB/(º/s)
% FS_SEL=3      16.4    LSB/(º/s)
    
    g = mimu_read_out.get_gravity_norm();
    p = inputParser;
    
    addParameter(p, 'scale_acc', 2048/g, @(x) x > 0);
    addParameter(p, 'scale_gyro', 16.4, @(x) x > 0);
    
    parse(p,varargin{:});
    
    fprintf("Scale accelerometer: %.2e\n", p.Results.scale_acc)
    fprintf("Scale gyroscope: %.2e\n", p.Results.scale_gyro)
    
    N_sensors = size(inertial_data, 1);
    inds_acc = sort([1:6:N_sensors, 2:6:N_sensors, 3:6:N_sensors]);
    inds_gyro = sort([4:6:N_sensors, 5:6:N_sensors, 6:6:N_sensors]);
    
    inertial_data_scaled = zeros(size(inertial_data));
    
    inertial_data_scaled(inds_acc,:) = inertial_data(inds_acc,:)./p.Results.scale_acc;
    inertial_data_scaled(inds_gyro,:) = inertial_data(inds_gyro,:)./p.Results.scale_gyro;

end

