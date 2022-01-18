import { LightningElement , track } from 'lwc';

export default class LwcLoop extends LightningElement {
    @track contacts = [
        {
            FirstName: 'Sha',
            LastName: 'Rejepov',
            ContactId: 1
        },
        {
            FirstName: 'Bobby',
            LastName: 'Shmurda',
            ContactId: 2
        },
        {
            FirstName: 'Danny',
            LastName: 'DeVito',
            ContactId: 3
        },
        {
            FirstName: 'Nick',
            LastName: 'Jonas',
            ContactId: 4
        },
        {
            FirstName: 'Roger',
            LastName: 'Federer',
            ContactId: 5
        }
    ];
}