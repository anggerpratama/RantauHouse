import { Injectable } from '@angular/core';
import { login } from './data-hand';
import { DataService } from './data.service';
import { AuthGuard } from './auth-guard';
import { CanActivate } from '@angular/router/src/interfaces';
import { Router } from '@angular/router';


@Injectable()
export class AuthService implements CanActivate{
    constructor(private datSer:DataService , private ats:AuthGuard , private route:Router){}
    model = new login();
    perLog:any;

    canActivate():boolean{
        if (this.ats.guards) {
            return true;
        }else{
            window.alert("You don have permision // Login First");
            this.route.navigate(['/login']);
            return false;
        }
    }
}
