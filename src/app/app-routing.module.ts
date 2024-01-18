import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router';

import { CrudempleadoComponent } from './crudempleado/crudempleado.component';
import { ProductosComponent } from './productos/productos.component';

const routes: Routes = [
  { path: 'productos', component: ProductosComponent },
  {path:"crud",component: CrudempleadoComponent}
];

@NgModule({
  declarations: [],
  imports: [
    CommonModule,RouterModule.forRoot(routes,{useHash:true})
  ],
  exports:[RouterModule]
})
export class AppRoutingModule { }
