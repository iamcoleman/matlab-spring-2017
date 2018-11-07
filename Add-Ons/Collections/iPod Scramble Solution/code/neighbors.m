function [n,varargout] = neighbors(siz,loc,varargin)

if nargin>2
    i1 = loc ; 
    i2 = varargin{1} ; 
else % number of input arguments = 2
    i1 = loc(1) ; % x coordinate given as first element
    i2 = loc(2) ; % y coordinate given as second element
end

% draw a square around the index
x = [
    -1    -1
    -1     0
    -1     1
    0     1
    1     1
    1     0
    1    -1
    0    -1
    ] ; 

% i1 = 3 ; i2 = 4 ; 

x1 = [i1+x(:,1) i2+x(:,2)] ; % x-y coordinates of box around element in question.

% trim any elements that fall outside of the board boundary
x1(any(x1(:,1)<1 | siz(1)<x1(:,1),2),:) = [] ; 
x1(any(x1(:,2)<1 | siz(2)<x1(:,2),2),:) = [] ; 

% output is a 2-column vector, where each row has the X and Y coordinates of the neighbors
n = x1 ; 

if nargout>1 % if 2 output arguments are specified, 
    n = x1(:,1) ; % the first column provides the x-coordinates
    varargout{1} = x1(:,2) ; % the second column provides the y-coordinates
end

