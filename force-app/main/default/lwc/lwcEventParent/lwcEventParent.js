import { LightningElement } from 'lwc';

export default class LwcEventParent extends LightningElement {
    handleMatrixParent(event) {
        alert('The event has been captured in Parent component');
        console.log('Name: ',event.detail.Name);
        console.log('iMDB: ',event.detail.iMDB);
        console.log('ReleaseDate: ',event.detail.ReleaseDate);
        console.log('Director: ',event.detail.Director);
    }
}