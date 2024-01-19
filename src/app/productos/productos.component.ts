import { Component, OnInit } from '@angular/core';
import { HttpClient} from '@angular/common/http';

@Component({
  selector: 'app-productos',
  templateUrl: './productos.component.html',
  styleUrls: ['./productos.component.css']
})
export class ProductosComponent implements OnInit {

  constructor(private http:HttpClient) {
   }
   protected data:any = []

  ngOnInit(): void {
    this.LoadProductos()
  }
  LoadProductos(){
    let productos = this.http.get("http://localhost/angularfirst/src/api/index.php").forEach(response => {
      this.data = response
  })
  }

}
