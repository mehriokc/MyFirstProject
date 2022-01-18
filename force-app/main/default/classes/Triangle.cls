public class Triangle {
    public Triangle(integer a, integer b, integer c) {
        integer perimeter = a + b + c;
        system.debug( ' perimeter of ' + perimeter);
        decimal s = ((a+b+c) / 2 );
        decimal area = (s * (s-a)*(s-b)*(s-c));
        decimal areaTriangle = Math.sqrt(area);
        system.debug('The area of triangle --> '+areaTriangle);
    }
}


     

    

