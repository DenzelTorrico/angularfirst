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
  id = 1
  datos = [{
      id:1,
      name:"denzel",
      lastname:"Torrico"
  }]

  agregar(name:string,lastname:string) {
    this.id+=1
    this.datos.push({id:this.id,name:name,lastname:lastname})
    this.name = ""
    this.lastname = ""
  }
  Eliminar(id:number){
    this.datos = this.datos.filter(function(d){return d.id !==id})
    //console.log(this.datos.filter(function(d){return d.id !==id}))
  }
  
 
}
