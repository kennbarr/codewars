def pascalsTriangle(n)
   #return a flat array representing the values of Pascal's Triangle to the n-th level
   n >= 2 ? output = [1,1,1] : output = [1]
   count = 1
   for i in 2...n do
     output << 1
       for j in 0..(i-2)
         output << output[count+j]+output[count+j+1]
       end
     output << 1
     count += i
   end
   output
end