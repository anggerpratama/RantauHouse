import { Component, OnInit } from '@angular/core';
import { AppComponent } from '../app.component';
import { login } from '../data-hand';
import { DataService } from '../data.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  model = new login();
  perLog:any;
  logic:boolean;
  msg:string;

  constructor(private apscom:AppComponent , private datSer:DataService) { 
    this.logic = false;
  }
  
  ngOnInit() {
  }

  clickHome(){
    this.apscom.setHome();
  }

  login(){
    this.datSer.loginPerson(this.model).subscribe(perLog => {
      this.perLog = perLog;
      this.logic = true;
    });
  }

}
