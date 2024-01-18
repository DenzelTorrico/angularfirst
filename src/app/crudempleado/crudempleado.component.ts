import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-crudempleado',
  templateUrl: './crudempleado.component.html',
  styleUrls: ['./crudempleado.component.css']
})
export class CrudempleadoComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }
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
    if(name == "" || lastname == ""){
        alert("Rellena los datos por favor")
    }else{
      this.datos.push({id:this.id,name:name,lastname:lastname})
      this.name = ""
      this.lastname = ""
    }
    
  }
  Eliminar(id:number){
    this.datos = this.datos.filter(function(d){return d.id !==id})
    //console.log(this.datos.filter(function(d){return d.id !==id}))
  }
  
}
