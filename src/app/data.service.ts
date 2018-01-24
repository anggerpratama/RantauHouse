import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { user } from './data-hand';
import 'rxjs/add/operator/map';

@Injectable()
export class DataService {
  user = [];
  checkMe:any;


  constructor(private _http:Http) { }
  //fatching All data
  getAlldata(){
    return this._http.get("http://localhost:100/api/select.php")
    .map(res => {

      this.checkMe = res;

      if(this.checkMe._body !== "0"){
        return res.json();
      }

    })
  }
  //Send some data
  addData(data){
    return this._http.post("http://localhost:100/api/insert.php" , data)
    .map(() => "");
  }
  //fetching one data
  getOne(id){
    return this._http.post("http://localhost:100/api/selectone.php" , {'id' : id})
    .map(res => res.json());
  }
  //editing data 
  editData(data){
    return this._http.post("http://localhost:100/api/edit.php" , data)
    .map(() => "");
  }
  //deleting data 
  deleteData(id){
    return this._http.post("http://localhost:100/api/delete.php" , {'id':id})
    .map(() => this.getAlldata());
  }
  //Login page
  loginPerson(username : string , password:string){
    return this._http.post("http://localhost:100/api/login.php" , { username: username, password: password })
    .map(res =>{
      if (res) {
        return res.json();
      }
    });
  }
}
