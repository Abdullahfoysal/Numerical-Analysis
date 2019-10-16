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
## @deftypefn {} {@var{retval} =} bisectionMethod (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: IICT (SWE) <IICT (SWE)@DESKTOP-N19UIAG>
## Created: 2019-10-16

function retval = bisectionMethod (f,a,b)
  
  fa=f(a);
  fb=f(b);
  
  if((fa*fb)>=0)
  retval='No root available';
    
    return;
  end 
  retval(1,:)=[a,b,0,0];
  initfinal=0;
  for i=2:20
   
     fa=f(a);
     fb=f(b);
     c=(a+b)/2;   
     fc=f(c);
     retval(i,:)=[a,b,c,fc];
    if(abs(c-initfinal)<0.0001)
    fprintf('root:%.4f\n',c);
    
    return;
    end
    initfinal=c;
    
    if(fa*fc<0)
    b=c;
    else a=c;
    
    end
   
  
    end  
  

endfunction
