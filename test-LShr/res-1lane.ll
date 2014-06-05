; ModuleID = 'res-1lane.bc'

define <8 x i32> @try(<8 x i32> %a) {
  %bitcast1 = bitcast <8 x i32> %a to i256
  %LShr = lshr i256 %bitcast1, 32
  %bitcast2 = bitcast i256 %LShr to <8 x i32>
  ret <8 x i32> %bitcast2
}
