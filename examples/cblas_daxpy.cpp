#include <iostream>
#include <vector>
#include <cassert>

#include "openblas/cblas.h"

std::ostream& operator<<(std::ostream& out, const std::vector<double>& vec) {
  int sz = vec.size();
  out << "[";
  for (int i=0; i<sz-1; i++)
    out << vec[i] << ", ";
  out << vec[sz-1] << "]";
  return out;
}

int main() {
  std::vector<double> x = {1, 2, 3, 4, 5};
  std::vector<double> y = {3, 4, 5, 6, 7};

  int alpha = 2;
  assert(x.size() == y.size());

  std::cout << alpha << " * " << x << " + " << y << " = ";
  cblas_daxpy(x.size(), alpha, x.data(), 1, y.data(), 1);
  std::cout << y << "\n";

  return 0;
}