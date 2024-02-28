import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {

    connectedCallback() {
        // Vulnerable code snippet
        var userInput = "<script>alert('XSS vulnerability!');</script>";
        document.getElementById("output").innerHTML = userInput;
    }
}