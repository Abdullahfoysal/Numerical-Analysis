## Copyright (C) 2019 IICT (SWE)
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} eulermethod (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: IICT (SWE) <IICT (SWE)@DESKTOP-N19UIAG>
## Created: 2019-10-16

function eulermethod (f,xrange,y0,h)
  
x=xrange(1):h:xrange(2);

y(1)=y0;
for i=2:length(x)
  y(i)=y(i-1)+h*f(x(i-1),y(i-1));
end
retval =[x' y']

endfunction
