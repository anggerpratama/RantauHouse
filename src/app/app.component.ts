import { Component } from '@angular/core';
import { Location } from '@angular/common';
import { Router , ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'app';
  isCollapsed:boolean;
  navhide:boolean;
  pathUrl:string;
  condi:boolean;
  logfor:boolean;

  constructor(private router: Router , private loca: Location){ 
    this.pathUrl = window.location.pathname;
    //logic for path
    if (this.pathUrl == "/") {
      this.setHome();
    } else if(this.pathUrl == "/login") {
      this.setLog();
    }  else {
      this.setHome();
    }

    //for ending session
    if (sessionStorage.getItem('status')) {
      this.logfor = true;
    } else {
      this.logfor = false;
    }
  }

  setHome(){
    this.condi = false;
  }
  setLog(){
    this.condi = true;
  }
  logOut(){
    sessionStorage.removeItem("status");
    location.reload();
    window.alert("You are now Logged out");
    this.setLog();
    this.router.navigate(['/login']);
    return true;
  }

  

}
