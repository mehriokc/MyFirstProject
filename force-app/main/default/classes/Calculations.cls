public  class Calculations {
//Create a method which takes two integers.
//return the sum of those two integers.
 
    //Method name: add
    // of Paramenters : 2
    //data type of parameters: 1) integer, 2) integer
    public static integer add(integer int1, integer int2){
        return int1 + int2;
    }

    //Method name: add
    // of Paramenters : 3
    //data type of parameters: 1) integer, 2) integer, 3) integer
    public integer add(integer int1, integer int2, integer int3){
        return int1 + int2 +int3;
    }

    //multiplication
    public static integer multiply(integer int1, integer int2){
        return int1*int2;
    }

    //create a method which takes List of integer
    //return addition of all the elements
    public static integer addAll(List<integer> intList){
        integer sum = 0;
        //for each loop
        for( integer eachInt : intList ){
        sum = sum + eachInt;
        }
        return sum;
    }
    
}