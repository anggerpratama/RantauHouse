import { Component, OnInit } from '@angular/core';
import { Http } from '@angular/http';
import { Router } from '@angular/router';
import { Observable } from 'rxjs/Observable';
import { TimerObservable } from 'rxjs/observable/TimerObservable';

import { DataService } from '../data.service';

@Component({
  selector: 'app-order',
  templateUrl: './order.component.html',
  styleUrls: ['./order.component.css']
})
export class OrderComponent implements OnInit {

  private alaive:boolean;
  private interval:number;
  load:boolean;
  allUser:any;

  constructor(private _http:Http , private _datSer:DataService) { 
    this.alaive = true;
    this.interval = 10000;
    this.load = false;
  }


  ngOnInit() {
    TimerObservable.create(0 , this.interval )
    .subscribe(() => {
      this.getData();
    });
  }

  tampil(){
    
  }

  getData(){
    this._datSer.getAlldata().subscribe(allUser =>{
      this.allUser = allUser;
      this.load = true;
    });
  }

  deletePerson(id){
    this._datSer.deleteData(id).subscribe(() => {
      this.getData();
    })
  }

}
