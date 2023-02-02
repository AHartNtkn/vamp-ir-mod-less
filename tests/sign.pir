/* An script to test out sign calculation.
   vamp-ir setup params.pp
   vamp-ir compile tests/sign.pir params.pp circuit.plonk
   vamp-ir prove circuit.plonk params.pp proof.plonk
   vamp-ir verify circuit.plonk params.pp proof.plonk
*/

// Get sign of 0
def a1 = {
  def k = fresh (($0));
  k
};

a1 = 0;

// Get sign of 1
def a2 = {
  def k = fresh (($1));
  k
};

a2 = 0;

// Get sign of 100
def a3 = {
  def k = fresh (($100));
  k
};

a3 = 0;

// Get sign of -1
def a4 = {
  def k = fresh (($-1));
  k
};

a4 = 1;

// Get sign of -100
def a5 = {
  def k = fresh (($-100));
  k
};

a5 = 1;

