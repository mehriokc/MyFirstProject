//outer class
public class SampleClass {
    public string sampleStr = 'This is a class variable.';
    private string sampleStrPrivate = 'This is a private class variable';

   //static string
   public static string staticString = 'this is a public static string';p


    //parameter less contructor
    public SampleClass(){
        system.debug('debugging from constructor');
        system.debug('from constructor sampleStr = ' + sampleStr);
    }
    
    //parametrized contructor
    public SampleClass( string defaultPrint){
        sampleStr = defaultPrint;
        system.debug(defaultPrint);
    }
    public void sampleMethod(){
        string sampleStr = 'This is a class variable.';
        string sampleStrPrivate = 'This is a private class variable';
         system.debug('sample method called');
        system.debug('sampleStrPrivate');
        system.debug('3rd debug');
        system.debug('one more debug');
 
    }

    

    //parameterized method
    public void printIt(string printString){
        system.debug('print string is ' + printString);
    }

    private class SamplePriInnerClass{
        


}