import { LightningElement , api} from 'lwc';

export default class LdsApi extends LightningElement {
    @api recordId;
    @api objectApiName;
}