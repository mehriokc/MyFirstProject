import { LightningElement , wire , track } from 'lwc';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';

export default class LdsPicklist extends LightningElement {

    //undefined
    @track optionsRecordType;
    optionsCountry;
    optionsState;
    optionsCity;

    @wire(getObjectInfo, { objectApiName: ACCOUNT_OBJECT })
    getObjectInfoData({ data, error }) {
        if (data) {
            let recordTypeInfos = data.recordTypeInfos;
            let recordTypes = Object.values(recordTypeInfos);
            //intialize
            this.optionsRecordType = [];
            for (let i = 0; i < recordTypes.length; i++){
                let recordType = recordTypes[i];
                console.log('recordType: ', recordType);
                if (!recordType.master) {
                    this.optionsRecordType.push({
                        label: recordType.name,
                        value: recordType.recordTypeId
                    });
                }
            }
            console.log('this.optionsRecordType: ',this.optionsRecordType);
        } else if (error) {
            console.log('Error getObjectInfo: ', JSON.stringify(error));
        }
    }

    handleRecordTypeChange(event) {
        console.log('Value: ',event.detail.value);
    }
}