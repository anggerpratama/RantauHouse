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

  constructor(private router: Router , private loca: Location){ 
    this.pathUrl = window.location.pathname;
    if (this.pathUrl == "/") {
      this.setHome();
    } else if(this.pathUrl == "/login") {
      this.setLog();
    }  else {
      this.setHome();
    }
  }

  setHome(){
    this.condi = false;
  }
  setLog(){
    this.condi = true;
  }

  

}
