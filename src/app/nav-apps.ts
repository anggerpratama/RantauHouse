import { NgModule }  from '@angular/core';
import { Routes } from '@angular/router';

//class of the end
import { ProfileComponent } from './profile/profile.component';
import { OrderComponent } from './order/order.component';
import { LoginComponent } from './login/login.component';
import { EditComponent } from './edit/edit.component';
import { AuthGuard } from './auth-guard';
import { AuthService } from './auth-service';

export const navApps:Routes = [
    {path: '' , component: OrderComponent , canActivate: [AuthService]},
    {path: 'signup' , component: ProfileComponent},
    {path: 'edit/:id' , component: EditComponent , canActivate: [AuthService]},
    {path: 'login' , component: LoginComponent}
]
