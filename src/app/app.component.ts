import { Component } from '@angular/core';
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
  pathUrl:any;

  constructor(private router: Router , private route: ActivatedRoute){
  }

}
