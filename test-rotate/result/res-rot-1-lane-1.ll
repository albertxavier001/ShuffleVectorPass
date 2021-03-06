; ModuleID = 'res-rot-1-lane-1.bc'

define <8 x i32> @try(<8 x i32> %a) {
  %bitcast1 = bitcast <8 x i32> %a to i256
  %shl1 = shl i256 %bitcast1, 32
  %bitcast2L = bitcast i256 %shl1 to <8 x i32>
  %bitcast11 = bitcast <8 x i32> %a to i256
  %LShr = lshr i256 %bitcast11, 224
  %bitcast2R = bitcast i256 %LShr to <8 x i32>
  %Xor = xor <8 x i32> %bitcast2L, %bitcast2R
  ret <8 x i32> %Xor
}
