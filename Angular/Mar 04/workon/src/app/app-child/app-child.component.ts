import { Component, Input, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-app-child',
  templateUrl: './app-child.component.html',
  styleUrl: './app-child.component.css'
})
export class AppChildComponent {
  @Input() products: string[] = [];
  @Output() moveToParent = new EventEmitter<string>();

  moveProduct(product: string) {
    this.moveToParent.emit(product);
  }
}
