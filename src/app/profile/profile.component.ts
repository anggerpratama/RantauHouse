import { Component, OnInit } from '@angular/core';
import { Http } from '@angular/http';
import { Router , ActivatedRoute , Params } from '@angular/router';

import { DataService } from '../data.service';
import { user } from '../data-hand';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.scss']
})
export class ProfileComponent implements OnInit {

  constructor(private _datSer:DataService , private router:Router) { }
  model = new user();
  info: Boolean;


  ngOnInit() {
    this.info = false;
  }

  addPerson(){
    this.model.password = btoa(this.model.password);
    this._datSer.addData(this.model).subscribe(() => this.infwork());
  }

  infwork(){
    this.info = true;
  }

}
