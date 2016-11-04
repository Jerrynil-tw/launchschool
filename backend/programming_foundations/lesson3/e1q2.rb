! and ? at the end of method are just part of the method name, not ruby syntax, 
It denpends on the implementation of method to justify what method is doing.

1.  != is a comparison operator, it means "not equal" ,
    it will compare the expression right and left,and return boolean

2.  ! is a method which will return a boolean, 
    !<some object> is used to turn any object into the opposite of their boolean equivalent
    If the expression evaluates to thruthy, 
    it will return the opposite value, false ,vice versa.

3.  Methods ending in ! may perform some permanent or cause potentially dangerous change
    <some method>! usually means the method may has side effect and probably will mutate the caller

5.  Methods ending in ? may return a boolean

6.  !! is a method which will return a boolean, 
    !!<some object> is used to turn any object into their boolean equivalent. 
    If the expression evaluates to thruthy, it will return true,vice versa.

    