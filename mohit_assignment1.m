clc;
moves = 1000;
a = zeros(60);
canvas = zeros(60);
ie = -0.5;
energy = 9*ie;
x = zeros(1,16);
y=zeros(1,16);
p = [2,1,12,13;3,4,11,14;6,5,10,15;7,8,9,16];
a(16:19,16:19) = p;

for m = 1:moves
   eini=energy ;
  canvas = a;
  
  r = randi(16);
  %end moves
   if (r == 16)
      [i1,j1] = find(a==15);
      [i2,j2] = find(a==16);
      if (j1 == j2)
          if (a(i1,j1+1) == 0) 
            a(i1,j1+1) = a(i2,j2);
            a(i2,j2) = 0;
          elseif (a(i1,j1-1) == 0)
               a(i1,j1-1) = a(i2,j2);
               a(i2,j2) = 0;
           else
               a(i2,j2) = a(i2,j2);
          end
      elseif (i1 == i2)
          if (a(i1-1,j1) == 0)
              a(i1-1,j1) = a(i2,j2);
              a(i2,j2) = 0;
          elseif (a(i1+1,j1) == 0)
              a(i1+1,j1) = a(i2,j2);
              a(i2,j2) = 0;
          else
              a(i2,j2) = a(i2,j2);
          end
      end
   end
  if (r == 1)
      [i1,j1] = find(a==2);
      [i2,j2] = find(a==1);
      if (j1 == j2)
          if (a(i1,j1+1) == 0) 
            a(i1,j1+1) = a(i2,j2);
            a(i2,j2) = 0;
          elseif (a(i1,j1-1) == 0)
               a(i1,j1-1) = a(i2,j2);
               a(i2,j2) = 0;
           else
               a(i2,j2) = a(i2,j2);
          end
      elseif (i1 == i2)
          if (a(i1-1,j1) == 0)
              a(i1-1,j1) = a(i2,j2);
              a(i2,j2) = 0;
          elseif (a(i1+1,j1) == 0)
              a(i1+1,j1) = a(i2,j2);
              a(i2,j2) = 0;
          else
              a(i2,j2) = a(i2,j2);
          end
      end
  end
  %crankshaft moves
  if ((r>1) && (r<16))
      b = r;
      [i1,j1] = find(a==b);
      if ((a(i1-1,j1) == b-1) && (a(i1,j1+1) == b+1) && (a(i1-1,j1+1) == 0))
          a(i1-1,j1+1) = a(i1,j1);
          a(i1,j1) = 0;
      else
          a(i1,j1) = a(i1,j1);
      end
      if ((a(i1-1,j1) == b-1) && (a(i1,j1-1) == b+1) && (a(i1-1,j1-1) == 0))
          a(i1-1,j1-1) = a(i1,j1);
          a(i1,j1) = 0;
      else 
          a(i1,j1) = a(i1,j1);
      end
      if ((a(i1+1,j1) == b+1) && (a(i1,j1-1) == b-1) && (a(i1+1,j1-1) == 0))
          a(i1+1,j1-1) = a(i1,j1);
          a(i1,j1) = 0;
      else
          a(i1,j1) = a(i1,j1);
      end
      if ((a(i1+1,j1) == b+1) && (a(i1,j1+1) == b-1) && (a(i1+1,j1+1) == 0))
          a(i1+1,j1+1) = a(i1,j1);
          a(i1,j1) = 0;
      else
          a(i1,j1) = a(i1,j1);
      end
  end
  %energy calculation
  n = 0;
  for i = 1:16
      if i == 1
          [i1,j1] = find(a==1);
          [i2,j2] = find(a==12);
         if ((i1-i2)^2 + (j1-j2)^2) == 1
             n = n+1;
         end
      elseif i == 3
          [i1,j1] = find(a==3);
          [i2,j2] = find(a==6);
          if ((i1-i2)^2 + (j1-j2)^2) == 1
             n = n+1;
          end
      elseif i == 4
          [i1,j1] = find(a==4);
          [i2,j2] = find(a==1);
         if ((i1-i2)^2 + (j1-j2)^2) == 1
             n = n+1;
         end
      elseif i == 5
          [i1,j1] = find(a==5);
          [i2,j2] = find(a==10);
         if ((i1-i2)^2 + (j1-j2)^2) == 1
             n = n+1;
         end
      elseif i == 8
          [i1,j1] = find(a==8);
          [i2,j2] = find(a==5);
         if ((i1-i2)^2 + (j1-j2)^2) == 1
             n = n+1;
         end
      elseif i == 9
          [i1,j1] = find(a==9);
          [i2,j2] = find(a==16);
         if ((i1-i2)^2 + (j1-j2)^2) == 1
             n = n+1;
         end
      elseif i == 10
          [i1,j1] = find(a==10);
          [i2,j2] = find(a==15);
         if ((i1-i2)^2 + (j1-j2)^2) == 1
             n = n+1;
         end
      elseif i == 11
          [i1,j1] = find(a==11);
          [i2,j2] = find(a==4);
         if ((i1-i2)^2 + (j1-j2)^2) == 1
             n = n+1;
         end
      elseif i == 14
          [i1,j1] = find(a==14);
          [i2,j2] = find(a==11);
         if ((i1-i2)^2 + (j1-j2)^2) == 1
             n = n+1;
         end
      end 
  %boltzmann weight
   kt = 1;
   efin = n*(ie);
   q = rand(1);
   if efin<eini || exp(-(efin-eini)/kt)>q
       energy = efin;
   else
       energy = eini;
   end
   
   
  %plotting 
  for i = 1:16
    [ y(i), x(i)]= find(a==i);
  end
 plot(x,y,'k-',x(1),y(1),'or',x(16),y(16),'or','linewidth',2);
grid on;
xlim([11 22]);
ylim([11 22]);
title(['no. of moves = ', num2str(m)])
drawnow;
       
     
  end
end  