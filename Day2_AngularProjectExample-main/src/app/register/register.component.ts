import { Component, EventEmitter, Output } from '@angular/core';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent {
  name: string = '';
  num: number | null = null;
  email: string = '';
  password: string = '';
  confirmPassword: string = '';
  check: boolean = false;

  constructor() {
    this.name = '';
    this.num = null;
    this.email = '';
    this.password = '';
    this.confirmPassword = '';
    this.check = false;
  }
  @Output() userDataRegistered = new EventEmitter<{ name: string, num: number | null }>();

  onSubmit() {

    if (this.password !== this.confirmPassword) {
      alert("password does not match");
      return;
    }
    if (!this.check) {
    
        alert("your details submitted");
        console.log('Name:', this.name);
        console.log('Enrollment Number:', this.num);
        console.log('Email:', this.email);
        console.log('Password:', this.password);
        console.log('Confirm Password:', this.confirmPassword);
        return;
         }

         this.userDataRegistered.emit({ name: this.name, num: this.num });

  this.resetForm();

}

resetForm() {
  this.name = '';
  this.num = null;
  this.email = '';
  this.password = '';
  this.confirmPassword = '';
  this.check = false;
}

}
