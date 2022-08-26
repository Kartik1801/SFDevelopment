import { LightningElement} from 'lwc';

export default class SecondComponent extends LightningElement {
     firstName;
     lastName;
     alias;
    
    fchange(e){
        this.firstName = e.target.value;
        this.handleAlias();
    }

    lchange(e){
        this.lastName = e.target.value;
        this.handleAlias();
    }
    handleAlias(){
            const f = this.template.querySelector(".first").value;
            const l = this.template.querySelector(".last").value; 
            
            this.alias = f&&l?`${f?f[0]:""}.${l?l:""}`:"";
    }

    get userAlias(){
        return this.alias;
    }

}