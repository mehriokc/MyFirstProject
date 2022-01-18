public class AccountQueueableExample implements Queueable {
    // class variable
    public list<account> accList = new List<Account>();
    //parameterized costructor
    // will be called when we create new instance of this class
    public AccountQueueableExample(List<account> accList) {
        this.accList = accList;
    }
    //execute method.
    //must implement this method when implementing queueable interface.
    
    public void execute(QueueableContext qc){
        for(account acc : accList){
            acc.name = acc.name + 'si';
        }
        update accList;
    }
}
