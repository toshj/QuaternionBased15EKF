            function omega_n_ie = earthrate(L)
% %===========================================================%
% %           function omega_n_ie = earthrate(L)              %
% %                                                           %
% %   This function returns the Earth rate vector expressed   %
% %   in noth-east-down coordinates.  The input is latitude   %
% %   (L) in units of radians.  The output is in units of     %
% %   radians per second.                                     %
% %                                                           %
% %   Programmer:     Demoz Gebre-Egziabher                   %
% %   Created:        July 2, 1998                            %
% %   Last Modified:  March 26, 2009                          %
% %                                                           %
% %     Copywrite 2009 Demoz Gebre-Egziabher                  %
% %     License: BSD, see bsd.txt for details                 %
% %===========================================================%

%   Load ellipsoid constants

%wgs_84_parameters;
% f = 1/298.257223563;        %   WGS-84 Flattening.
% e = sqrt(f*(2 - f));        %   Eccentricity.
omega_ie = 7.292115e-5;     %   WGS-84 Earth rate (rad/s).
% R_0 = 6378137;              %   WGS-84 equatorial radius (m).                            
% R_P = R_0*(1 - f);          %   Polar radius (m).
% mu_E = 3.986004418e14;      %   WGS-84 Earth's gravitational
% Rew = 6.359058719353925e6;
% Rns = 6.386034030458164e6;
%   Compute Earth rate vector
 
omega_n_ie = omega_ie*[cos(L);0;-sin(L)];

%===========================================================%     

