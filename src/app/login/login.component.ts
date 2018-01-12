import { Component, OnInit } from '@angular/core';
import { AppComponent } from '../app.component';
import { login } from '../data-hand';
import { DataService } from '../data.service';
import { AuthGuard } from '../auth-guard';
import { Router } from '@angular/router';
import { TimerObservable } from 'rxjs/observable/TimerObservable';
import { Session } from 'selenium-webdriver';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  interval:number;
  model = new login();
  perLog:any;
  logic:string;
  msg:string;
  baseUrl:string;
  protected _session:Session;

  constructor(private apscom:AppComponent , private datSer:DataService ,
     private authSer: AuthGuard , private router: Router) { 
    this.interval = 4000;
    this.logic = "noLog";
    this.baseUrl = "../../assets";
  }
  
  ngOnInit() {
  }

  clickHome(){
    this.logic = "noLog";
  }

  login(){


    //new push meong 
    this.datSer.loginPerson(this.model.username , this.model.password)
    .subscribe(perLog => {
      this.perLog = perLog;
      
      if (perLog.id_user) {
        
        sessionStorage.setItem('status' , 'log');
        this.logic = "logged";
        this.authSer.openGuard();
        
        TimerObservable.create(3000 , this.interval )
        .subscribe(() => {
          this.apscom.setHome();
          this.router.navigate(['/']);
        });
      
      }
   
    });
  
  }

}
