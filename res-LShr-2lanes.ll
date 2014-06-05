; ModuleID = 'res-LShr-2lanes.bc'

define <8 x i32> @try(<8 x i32> %a) {
  %bcInst1 = bitcast <8 x i32> %a to <2 x i128>
  %LShr = lshr <2 x i128> %bcInst1, <i128 32, i128 32>
  %bitcast2 = bitcast <2 x i128> %LShr to <8 x i32>
  ret <8 x i32> %bitcast2
}
