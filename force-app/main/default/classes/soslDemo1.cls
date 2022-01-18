public with sharing class soslDemo1 {
    public static void sosl1() {
        list<list<sObject>> soslList= [Find 'oil or sforce' IN ALL fields returning account(id,name,phone), contact(id,name,phone)];

        list<account> listAccount = (list<account>)soslList.get(0);
        list<contact> listContact = (list<contact>)soslList.get(1);
        system.debug(listAccount);
        system.debug(listContact);

    }
}
