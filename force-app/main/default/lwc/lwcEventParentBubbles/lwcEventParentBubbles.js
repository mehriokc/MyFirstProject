import { LightningElement } from 'lwc';

export default class LwcEventParentBubbles extends LightningElement {
    handleSendDataParent1(event) {
        console.log('Inside handleSendDataParent1');
    }

    handleSendDataParent2(event) {
        console.log('Inside handleSendDataParent2');
    }
}