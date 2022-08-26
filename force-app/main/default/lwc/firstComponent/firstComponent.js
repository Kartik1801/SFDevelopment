import { LightningElement, track } from 'lwc';

export default class FirstComponent extends LightningElement {
    @track Name;
    @track Age;
    nameChange(event){
        if(event.target.name == 'inp1'){
            this.Name = event.target.value;
        }
    }
    ageChange(event){
        if(event.target.name == 'inp2'){
            this.Age = event.target.value
        }
    }
    handleClick(){
        const text = this.template.querySelector('.text-field');   
        if(this.Age > 0 && this.Age <= 20){
            text.style.cssText = "color: green";
        }
        else if (this.Age > 20 && this.Age <= 50){
            text.style.cssText = "color: yellow";
            
        }
        else if(this.Age > 50 ){
            text.style.cssText = "color: red";
        }        
    }
    get userName(){
        return this.Name;
    }

    get userAge(){
        return this.Age;
    }
}