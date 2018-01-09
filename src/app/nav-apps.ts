import { NgModule }  from '@angular/core';
import { Routes } from '@angular/router';

//class of the end
import { ProfileComponent } from './profile/profile.component';
import { OrderComponent } from './order/order.component';
import { LoginComponent } from './login/login.component';
import { EditComponent } from './edit/edit.component';

export const navApps:Routes = [
    {path: '' , component: OrderComponent},
    {path: 'profile' , component: ProfileComponent},
    {path: 'edit/:id' , component: EditComponent},
    {path: 'login' , component: LoginComponent}
]
