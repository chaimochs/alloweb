import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router';
import { LoginComponent } from './components/login/login.component';
import { ParentMainComponent } from './components/parent-main/parent-main.component';
import { ChildTasksComponent } from './components/child-tasks/child-tasks.component';


const routes: Routes = [
  { path: '', component: LoginComponent },
  { path: 'parent-main', component: ParentMainComponent },
  { path: 'child-main', component: ChildTasksComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
