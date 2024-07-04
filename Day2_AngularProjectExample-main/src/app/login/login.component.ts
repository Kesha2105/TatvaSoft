import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {
  
  email: string = '';
  password: string = '';
  @Input() userName: string = '';
  @Input() enrollmentNumber: number | null = null;


  receiveUserData(userData: { name: string, num: number | null }) {
    this.userName = userData.name;
    this.enrollmentNumber = userData.num;
  }

  onSubmit() {
      
    alert("Login Successfully..!");
    console.log('Name:', this.userName);
    console.log('Enrollment Number:', this.enrollmentNumber);      
      
  }
}
