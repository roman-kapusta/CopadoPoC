@istest
public class MethodCalls {
    @IsTest
    // Change that was done in the Salesforce Setup UI
    public static void Test_Inner_Static_Methods_Calls() {
        Integer i;//
        DummyClass obj = new DummyClass('Testing constructor');

        System.debug('Private inner static void call without params');
        Private_Inner_Void_Static_Method_Without_Params();

        System.debug('Inner static void call without params');
        Inner_Void_Static_Method_Without_Params();

        System.debug('Inner static void call with params');
        Inner_Void_Static_Method_With_Params(3, 'dummy value');

        System.debug('Inner static void call with params');
        Inner_Void_Static_Method_With_Params(3, 'dummy value');
        // TODO: asdasd//  
        System.debug('Inner static call with params and return');
        i = Inner_Static_Method_With_Params(4, 'dummy another value');

        System.debug('Inner static call without params with return');
        i = Inner_Static_Method_Without_Params(); 

        System.debug('Inner static call with subcall');
        Inner_Static_Void_Method_With_Subcall();

        System.debug('Static void method without params');
        DummyClass.Void_Static_Method_Without_Params();

        System.debug('Void method withoud params');
        obj.Void_Method_Without_Params();

        System.debug('Void method with params');
        obj.Void_Method_With_Params(5, '5 text');

    
        System.debug('Method with params');
        i = obj.Method_With_Params(6, '6 text');
        System.assertEquals(6, i);

        System.debug('Method without params');
        i = obj.Method_Without_Params();

        System.debug('Method with subcalls');
        obj.Void_Method_With_Subcalls();
    }

    public static testmethod void Test_SOQL_Limits() {
        Integer i;
        System.debug('Hello world');
        DummyClass obj = new DummyClass('Testing constructor');

        obj.Void_Method_With_Queries();
        System.debug('Private inner static void call without params');
        Private_Inner_Void_Static_Method_Without_Params(); // Captain obvious comments 

        System.debug('Inner static void call without params');
        Inner_Void_Static_Method_Without_Params();

        System.debug('Inner static void call with params');
        Inner_Void_Static_Method_With_Params(3, 'dummy value');

        System.debug('Inner static call with params and return');
        i = Inner_Static_Method_With_Params(4, 'dummy another value');

        System.debug('Inner static call without params with return');
        i = Inner_Static_Method_Without_Params();

        System.debug('Inner static call with subcall');
        Inner_Static_Void_Method_With_Subcall();

        System.debug('Static void method without params');
        DummyClass.Void_Static_Method_Without_Params();

        System.debug('Void method withoud params');
        obj.Void_Method_Without_Params();

        System.debug('Void method with params');
        obj.Void_Method_With_Params(5, '5 text');


        System.debug('Method without params');
        i = obj.Method_Without_Params();

        System.debug('Method with subcalls');
        obj.Void_Method_With_Subcalls();
    }

    public static testmethod void Test_Member_Calls()
    {
        DummyClass obj1 = new DummyClass();
        obj1.dummyField = 'Object 1 dummy value';
        DummyClass obj2 = new DummyClass();
        obj2.dummyField = 'Object 2 dummy value';
        obj1.Method_Without_Params();
        obj2.Method_Without_Params();
    }

    public static testmethod void Coverage()
    {
        DummyClass.Dummy_For_Coverage();
        //Change from the IDE
        //
    }

    public static testmethod void ListIteration()
    {
        List<string> lst = new List<String>();
        lst.add('1');
        lst.add('2');
        lst.remove(1);
        lst.add('3');
        //
        lst.sort();
        System.debug(lst.size());
    }

    public static void Inner_Void_Static_Method_Without_Params() {
        System.debug('Inner_Void_Static_Method_Without_Params');
    }

    private static void Private_Inner_Void_Static_Method_Without_Params() {
        ActionPlan__c testVar;
        System.debug('Private_Inner_Void_Static_Method_Without_Params');
        //
    }
	//
    /**
     * @description Void method in the same class with parameters  
     */
    public static void Inner_Void_Static_Method_With_Params(Integer num, String text) {
        System.debug('Inner_Void_Static_Method_With_Param');

    }

    public static Integer Inner_Static_Method_With_Params(Integer num, String text) {
        System.debug('Inner_Static_Method_With_Params');
        return num + 1;
    }

    public static Integer Inner_Static_Method_Without_Params() {
        System.debug('Inner_Static_Method_Without_Params');
        return 10;
    }

    public static void Inner_Static_Void_Method_With_Subcall() {
        System.debug('Inner_Static_Void_Method_With_Subcall');
        for (Integer i = 0; i< 10; i++) {
            Inner_Void_Static_Method_Without_Params();
            Math.pow(Math.log10(Math.sqrt(Math.random())), Math.Pi);
        }
    }
}