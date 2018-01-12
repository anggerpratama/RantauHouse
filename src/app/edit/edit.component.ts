import { Component, OnInit } from '@angular/core';
import { Http } from '@angular/http';
import { Router , Params , ActivatedRoute } from '@angular/router';
import { DataService } from '../data.service';
import { user } from '../data-hand';

@Component({
  selector: 'app-edit',
  templateUrl: './edit.component.html',
  styleUrls: ['./edit.component.scss']
})
export class EditComponent implements OnInit {
  //var
  info:boolean;
  constructor(private _datSer:DataService , private router:Router , private route:ActivatedRoute) {
    this.info = false;
   }
  private id = this.route.snapshot.params['id'];
  model = new user();

  ngOnInit() {
    this.getOne();
  }

  getOne(){
    this._datSer.getOne(this.id)
    .subscribe(data => { 
      this.model = data[0];
    })
  }

  editPerson(){
    this._datSer.editData(this.model)
    .subscribe(() => {
      this.info = true;
    });
  }

}
