@isTest
public  class SampleClassTest {
    @istest static void sampleMethodTest(){
        SampleClass sc = new SampleClass();
        sc.sampleMethod();
        //assertation
        //just cheking that sampleStr is not null 
        system.assert(sc.sampleStr != null);


    }
    @istest static void testMethod2(){ 
    sampleclass sc = new sampleclass('parametrized constructor ');
    sc.printIt('printString');
    }
    @istest static void testMethod3(){
        SampleClass.SampleInnerClass sic = new SampleClass.SamplePriInnerClass
    }
}
