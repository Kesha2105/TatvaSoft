import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  userName: string = '';
  enrollmentNumber: number | null = null;

  receiveUserData(userData: { name: string, num: number | null }) {
    this.userName = userData.name;
    this.enrollmentNumber = userData.num;

}
}
