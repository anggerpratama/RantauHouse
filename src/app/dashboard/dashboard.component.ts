import { Component, OnInit } from '@angular/core';
import { user } from '../data-hand';
import { DataService } from '../data.service';
import { Router } from '@angular/router/';
import { TimerObservable } from 'rxjs/observable/TimerObservable';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.scss']
})
export class DashboardComponent implements OnInit {
  id_user:string;
  private interval:number;
  varuser = new user();
  protected baseUrl:string

  constructor(private datSer: DataService , private router: Router) { 
    this.interval = 10000;
    this.baseUrl = "../../assets/";
    TimerObservable.create(0 , this.interval )
    .subscribe(() => {
      sessionStorage.getItem('id_user');
    });
    if (sessionStorage.getItem('id_user')) {
      this.id_user = sessionStorage.getItem('id_user');
    }
  }

  ngOnInit() {
    this.datSer.getOne(this.id_user).subscribe(varuser => {
      this.varuser = varuser[0];
    })
  }

  logout(){
    sessionStorage.removeItem('status');
    sessionStorage.removeItem('id_user');
    window.alert('you are now logged out');
    window.location.reload();
    this.router.navigate(['/login']);
  }

}
