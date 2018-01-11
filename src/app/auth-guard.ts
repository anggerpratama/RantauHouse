import { Injectable } from '@angular/core';
import { Router , ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { AuthService } from './auth-service';

export class AuthGuard {
    public guards:boolean;
    constructor(){
        if (sessionStorage.getItem('status')) {
            this.guards = true;
        } else {
            this.guards = false;
        }
    }
    openGuard(){
        this.guards = true;
    }
}