function AonAstar = A_over_Astar_isentropic(M,gamma);

% [AonAstar] = A_over_Astar_isentropic(M,gamma)
%
% this is a funtion to calculate AonAstar using equation 2.25
% from the Compressible flow notes.
%
% Pass Mach number M and gamma (optional, otherwise 7/5 is assumed)
% to the function

if nargin==1, 
  gamma = (7/5);
end
if nargin > 2
	error('incorrect number of inputs')
end

term1 = (1./M);
term2 = (2./(gamma+1));
term3 = (1 + ((gamma -1)./2)*M.^2);

AonAstar = term1.*(term2.*term3).^((gamma + 1)/(2*(gamma - 1)));
