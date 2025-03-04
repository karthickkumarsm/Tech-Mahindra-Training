import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  products = ['Laptop', 'Phone', 'Tablet', 'Monitor', 'Keyboard'];
  selectedProducts: string[] = [];

  moveToChild(product: string) {
    this.products = this.products.filter(item => item !== product);
    this.selectedProducts.push(product);
  }

  moveToParent(product: string) {
    this.selectedProducts = this.selectedProducts.filter(item => item !== product);
    this.products.push(product);
  }
}
