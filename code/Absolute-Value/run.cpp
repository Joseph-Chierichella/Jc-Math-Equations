// This file is just a demonstration on how you can use the 
// absoluteValue.f95 file, you don't need to use this file at
// all! Feal free to use our code in your own c/c++ project


// You need gfortran and g++ to compile this code
//   gfortran -c -ffree-form absoluteValue.f95
//   g++ run.cpp absoluteValue.o -lgfortran -o <whatever you want>


#include <iostream>

extern "C" {
  void absoluteValue(double x, double* y);
}

int main() {
  double x;
  std::cout << "Enter any number! : ";
  std::cin >> x;
  double y;
  absoluteValue(x, &y);
  std::cout << "|" << x << "| = " << y << "\n";
  return 0;
}



