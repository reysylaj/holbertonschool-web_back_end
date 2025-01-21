const carSymbol = Symbol('Car');

class Car {
  constructor(brand, motor, color) {
    this._brand = brand;
    this._motor = motor;
    this._color = color;
    this[carSymbol] = true;
  }

  cloneCar() {
    return new this.constructor(this._brand, this._motor, this._color);
  }

  toString() {
    return `${this._brand} ${this._motor} ${this._color}`;
  }
}

export default Car;
