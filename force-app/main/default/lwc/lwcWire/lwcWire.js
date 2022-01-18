import { LightningElement , wire } from 'lwc';
import getAccounts from '@salesforce/apex/AccountController.getAccounts';

export default class LwcWire extends LightningElement {
    @wire(getAccounts)
    accounts;
        //1.Create apex method => AccountController.getAccounts()
    //2.Use '@AuraEnabled' to expose the method to LWC
    //3.Create a LWC => lwcWire
    //4.Write an import to load the Apex Method definition/call => import getAccounts from '@salesforce/apex/AccountController.getAccounts';
    //5.Use @wire to invoke the Apex Method => @wire(getAccounts)
    //6.Store the result in a property => accounts


    //accounts.data -> success in calling Apex; error = null
    //accounts.error-> failure in calling apex; data=null

}