import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'firstappv2'
  name = ""
  lastname = ""
  afecta = false
  
  datos = [{
      name:"denzel",
      lastname:"Torrico"
  }]

  agregar(name:string,lastname:string) {
    this.datos.push({name:name,lastname:lastname})
    this.name = ""
    this.lastname = ""
  
  }
  
 
}
