; ModuleID = 'res-rot-1-lane-2.bc'

define <8 x i32> @try(<8 x i32> %a) {
  %bcInst1 = bitcast <8 x i32> %a to <2 x i128>
  %shl1 = shl <2 x i128> %bcInst1, <i128 32, i128 32>
  %bitcast2L = bitcast <2 x i128> %shl1 to <8 x i32>
  %bcInst11 = bitcast <8 x i32> %a to <2 x i128>
  %LShr = lshr <2 x i128> %bcInst11, <i128 96, i128 96>
  %bitcast2R = bitcast <2 x i128> %LShr to <8 x i32>
  %Xor = xor <8 x i32> %bitcast2L, %bitcast2R
  ret <8 x i32> %Xor
}
