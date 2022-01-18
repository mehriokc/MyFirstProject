public class AccountQueueableExample2 implements Queueable {
   
    //execute method.
    //must implement this method when implementing queueable interface.
    public void execute(QueueableContext qc){
        for(account acc : accList){
            acc.name = acc.name + 'si';
        }
        update accList;
    }
}
