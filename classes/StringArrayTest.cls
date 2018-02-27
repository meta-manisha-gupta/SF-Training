public class StringArrayTest {
    public static list<String> generateStringArray(Integer numOfReturnedStrings){
        list<String> stringArray = new list<String>();
        for(Integer n = 0; n < numOfreturnedStrings; n++){
            stringArray.add('Test ' + n);
            System.debug(stringArray[n]);
        }
        return stringArray;
    }
}