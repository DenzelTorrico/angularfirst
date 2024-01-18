import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';

import { FormsModule } from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { CrudempleadoComponent } from './crudempleado/crudempleado.component';
import { ProductosComponent } from './productos/productos.component';
import { HttpClientModule } from '@angular/common/http';

@NgModule({
  declarations: [
    AppComponent,
    CrudempleadoComponent,
    ProductosComponent,
  ],
  imports: [
    BrowserModule,FormsModule, AppRoutingModule,HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
