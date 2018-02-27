public class NewCaseListController {
    public List<Case> getNewCases(){
        List<Case> listOfCases = [SELECT id, CaseNumber, Status from Case WHERE STATUS = 'New' ];
    	return listOfCases;
    }
}