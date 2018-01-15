import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { HttpModule } from '@angular/http';
import { FormsModule , ReactiveFormsModule } from '@angular/forms';


import { AppComponent } from './app.component';
import { navApps } from './nav-apps';
import { LoginComponent } from './login/login.component';
import { ProfileComponent } from './profile/profile.component';
import { OrderComponent } from './order/order.component';

//bootstrap componan
import { BsDropdownModule } from 'ngx-bootstrap';
import { TooltipModule } from 'ngx-bootstrap';
import { ModalModule } from 'ngx-bootstrap';
import { CollapseModule } from 'ngx-bootstrap';

//data component
import { DataService } from './data.service';
import { user } from './data-hand';
import { EditComponent } from './edit/edit.component';
import { AuthService } from './auth-service';
import { AuthGuard } from './auth-guard';
import { DashboardComponent } from './dashboard/dashboard.component';



@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    ProfileComponent,
    OrderComponent,
    EditComponent,
    DashboardComponent,
  ],
  imports: [
    BrowserModule,RouterModule.forRoot(navApps),
    BsDropdownModule.forRoot(),
    TooltipModule.forRoot(),
    ModalModule.forRoot(),
    CollapseModule.forRoot(),
    HttpModule, FormsModule , ReactiveFormsModule
  ],
  providers: [{provide:DataService , useClass: DataService} , AuthService , AuthGuard],
  bootstrap: [AppComponent],
  exports: [BsDropdownModule, TooltipModule , ModalModule]
})
export class AppModule { }
