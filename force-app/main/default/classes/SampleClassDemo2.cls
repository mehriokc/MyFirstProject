public class SampleClassDemo2 {
    public string sampleStr = 'this is a class variable';
    private string sampleStrPrivate = 'This is a private class variable';

    //static string
    public static string staticString = 'this is a public static string';


    public SampleClassDemo2() {
        system.debug('a constructor');

    }
    public void printIt(){
        system.debug('sampleStr = ' + sampleStr);
        system.debug(staticString);
    }
}
