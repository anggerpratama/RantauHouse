import { Component, OnInit } from '@angular/core';
import { Http } from '@angular/http';
import { Router , Params , ActivatedRoute } from '@angular/router';
import { DataService } from '../data.service';
import { user } from '../data-hand';
declare var $ : any;

@Component({
  selector: 'app-edit',
  templateUrl: './edit.component.html',
  styleUrls: ['./edit.component.scss']
})
export class EditComponent implements OnInit {
  //var
  info:boolean;
  passwe:string;
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
      this.model.password = atob(this.model.password);
    })
  }

  editPerson(){
    this._datSer.editData(this.model)
    .subscribe(() => {
      this.info = true;
    });
  }

  deletePerson(id){
    this._datSer.deleteData(id).subscribe(() => {
      sessionStorage.removeItem('status');
      sessionStorage.removeItem('id_user');
      window.alert("Your acount is deleted");
      window.location.reload();
      this.router.navigate(['/login']);
    })
  }

  requ(){
    $('.popup').css({
      "display": "block"
    });
    $('.popup-is').css({
      "transform": "scale(1 , 1)"
    });
  }
  closerequ(){
    $('.popup').css({
      "display": "none"
    });
    $('.popup-is').css({
      "transform": "scale(0 , 0)"
    });
  }
  

}
