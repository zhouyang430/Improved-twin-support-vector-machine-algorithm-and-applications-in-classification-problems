function [P, Z] = hyperplane_projection(a)
% [P, Z] = hyperplane_projection(a)
% 
%  Compute the projection matrix onto 
%  the subspace
% 
%  { x in R^n |  a'*x == 0 } 
%

Z = null(a');

z1 = Z(:,1);
z2 = Z(:,2); 

if a'*cross(z1,z2) < 0 
   z1 = -z1;
end

Z(:,1) = z1;
Z(:,2) = z2;


% P = Z(Z'*Z)Z' really but null returns a matrix Z whose columns
% are orthonormal so Z'*Z = I
P =  Z*Z';   

